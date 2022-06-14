part of 'poke_read_cubit.dart';

@freezed
class PokeReadState with _$PokeReadState {
  const factory PokeReadState.initial() = _Initial;
  const factory PokeReadState.loadingSuccess(KtList<Poke> pokeList) = _LoadingSuccess;
  const factory PokeReadState.loadingProgress() = _LoadingProgress;
  const factory PokeReadState.loadingFailure(PokeFailure failure) = _LoadingFailure;
}
