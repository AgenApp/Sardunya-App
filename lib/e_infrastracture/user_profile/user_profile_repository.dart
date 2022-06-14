import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:sardunya/d_domain/user_profile/i_user_profile_repository.dart';
import 'package:sardunya/d_domain/user_profile/user_profile.dart';
import 'package:sardunya/d_domain/user_profile/user_failure.dart';
import 'package:sardunya/e_infrastracture/user_profile/hive_user_profile_extension.dart';

const String hiveUserProfileBox = 'hiveUserProfileBox';

// working like handle repository and just contain main methods and initializer methods 
// only routing be done 
@LazySingleton(as: IUserProfileRepository)
class UserProfileRepository implements IUserProfileRepository {

  UserProfileRepository();

  @override
  Future<Either<UserProfileFailure, UserProfile>> read() async {
    var result = hiveUserRead();

    return result;
    
  }

  @override
  Future<Either<UserProfileFailure, Unit>> update(UserProfile profile) async {
    var result = hiveUserUpdate(profile);

    return result;
  }
}
