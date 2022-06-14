import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_failure.freezed.dart';
// Handle to section specific error
@freezed
abstract class UserProfileFailure with _$UserProfileFailure{
  const factory UserProfileFailure() = _UserProfileFailure;
  const factory UserProfileFailure.databaseNotFound()= _HiveUserBoxNotExist;
}
