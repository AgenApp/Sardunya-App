import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sardunya/d_domain/user_profile/i_user_profile_repository.dart';
import 'package:sardunya/d_domain/user_profile/user_failure.dart';
import 'package:sardunya/d_domain/user_profile/user_profile.dart';

part 'user_profile_state.dart';
part 'user_profile_cubit.freezed.dart';

//This cubit for handle general users setting
@injectable
class UserProfileCubit extends Cubit<UserProfileState> {
  UserProfileCubit(this._userProfileRepository)

      : super(UserProfileState.initial(UserProfile.initial()));
  final IUserProfileRepository _userProfileRepository;
  
  edit(UserProfile profile) async {
    emit(const UserProfileState.loadingProgress());
    var result = await _userProfileRepository.update(profile);
    result.fold(
      (failure) => emit(UserProfileState.loadingFailure(failure)),
      (_) async {
        read();
      },
    );
  }

  read() async {
    emit(const UserProfileState.loadingProgress());
    var result = await _userProfileRepository.read();
    
    result.fold(
      (failure) => emit(UserProfileState.loadingFailure(failure)),
      (profile) => emit(UserProfileState.loadingSuccess(profile)),
    );
  }
}
