import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'landing_state.dart';
part 'landing_cubit.freezed.dart';

  // This cubit is for  landing pages automation
@injectable
class LandingCubit extends Cubit<LandingState> {
  LandingCubit() : super(const LandingState.landingScreen());
  
  //Wait until given time than  emitted second state
  changeScreen(int weidingTimeAsMilisecond) {
    Future.delayed(
      Duration(milliseconds: weidingTimeAsMilisecond),
    ).then(
      (value) => emit(const LandingState.mainScreen()),
    );
  }
}
