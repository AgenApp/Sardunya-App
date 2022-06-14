part of 'poke_form_bloc.dart';

@freezed
class PokeFormState with _$PokeFormState {
  const factory PokeFormState({
    required Poke poke,
    required NotificationObject notification,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<Either<PokeFailure, NotificationFailure>, Unit>> saveSuccessOrFailureOption,
  }) = _PokeFormState;
  factory PokeFormState.initial() => PokeFormState(
        poke: Poke.empty(),
        notification:NotificationObject.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveSuccessOrFailureOption: none(),
      );
}
