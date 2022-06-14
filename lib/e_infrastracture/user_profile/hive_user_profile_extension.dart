import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sardunya/d_domain/core/errors.dart';
import 'package:sardunya/d_domain/user_profile/i_user_profile_repository.dart';
import 'package:sardunya/d_domain/user_profile/user_failure.dart';
import 'package:sardunya/d_domain/user_profile/user_profile.dart';
import 'package:sardunya/e_infrastracture/user_profile/user_profile_repository.dart';

 // extension but workin like a data repository 
 // for handle to logicall issue about to Hive
extension HiveUserProfileX on IUserProfileRepository{

  Future<Either<UserProfileFailure, UserProfile>> hiveUserRead() async {
    try {
      var box = Hive.box<UserProfile>(hiveUserProfileBox);

      if (box.isEmpty) {
        await box.add(UserProfile.initial());
      }

      try {
        UserProfile profile = box.values.first;

        if (profile.isFirst) {
          await box.putAt(0, const UserProfile(isFirst: false));
        } else {}

        return right(profile);
      } catch (e) {
        throw UnexpectedDatabaseError();
      }
    } catch (e) {
      return left(const UserProfileFailure.databaseNotFound());
    }
  }

  
  Future<Either<UserProfileFailure, Unit>> hiveUserUpdate(UserProfile profile) async {
    try {
      var box = Hive.box<UserProfile>(hiveUserProfileBox);

      try {
        await box.putAt(0, profile);

        return right(unit);
      } catch (e) {
        throw UnexpectedDatabaseError();
      }
    } catch (e) {
      return left(const UserProfileFailure.databaseNotFound());
    }
  }
}