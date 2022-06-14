part of 'poke_delete_cubit.dart';

@freezed
class PokeDeleteState with _$PokeDeleteState {
  const factory PokeDeleteState.initial() = _Initial;
  const factory PokeDeleteState.success() = _Success;
  const factory PokeDeleteState.progress() = _Progress;
  const factory PokeDeleteState.failure(PokeFailure failure) = _Failure;
}
