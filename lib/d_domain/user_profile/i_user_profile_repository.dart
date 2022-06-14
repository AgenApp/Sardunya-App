import 'package:dartz/dartz.dart';
import 'package:sardunya/d_domain/user_profile/user_failure.dart';
import 'package:sardunya/d_domain/user_profile/user_profile.dart';
// Kind of plan for infrastracture. what must we implementation 
abstract class IUserProfileRepository {
  Future<Either<UserProfileFailure,UserProfile>> read();
  Future<Either<UserProfileFailure,Unit>> update(UserProfile profile);
  
}