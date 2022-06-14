part of 'poke_form_bloc.dart';

@freezed
class PokeFormEvent with _$PokeFormEvent {
  const factory PokeFormEvent.initialized(Poke poke ) = _Initialized;
  const factory PokeFormEvent.titleChanged(String? titleStr) = _TitleChanged;
  const factory PokeFormEvent.contentChanced(String? constentStr) = _ContentChanced;
  const factory PokeFormEvent.timeChanced(Duration timeDuration) = _TimeChanced;
  const factory PokeFormEvent.saved(UniqueId id) = _Saved;
  const factory PokeFormEvent.failureOrSuccess(Either<Either<PokeFailure, NotificationFailure>, Unit>? failureOrSuccess) = _FailureOrSuccess;
}