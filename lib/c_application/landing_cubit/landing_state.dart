part of 'landing_cubit.dart';

@freezed
class LandingState with _$LandingState {
  const factory LandingState.landingScreen() = LandingScreen;
  const factory LandingState.mainScreen() = _MainScreen;
}
