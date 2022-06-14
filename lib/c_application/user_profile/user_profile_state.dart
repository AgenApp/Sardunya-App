part of 'user_profile_cubit.dart';

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState.initial(UserProfile profile) = _Initial;
  const factory UserProfileState.loadingProgress() = _LoadingProgress;
  const factory UserProfileState.loadingSuccess(UserProfile profile) = _LoadingSuccess;
  const factory UserProfileState.loadingFailure(UserProfileFailure failure) = _LoadingFailure;
}
