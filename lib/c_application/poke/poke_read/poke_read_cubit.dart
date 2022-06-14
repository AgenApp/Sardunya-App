import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:sardunya/d_domain/poke/i_poke_repository.dart';
import 'package:sardunya/d_domain/poke/poke.dart';
import 'package:sardunya/d_domain/poke/poke_failure.dart';
part 'poke_read_state.dart';
part 'poke_read_cubit.freezed.dart';

@injectable
class PokeReadCubit extends Cubit<PokeReadState> {
  PokeReadCubit(this._pokeRepository) : super(const PokeReadState.initial());

  final IPokeRepository _pokeRepository;
  
  
  // This method check database and  give pokeList
   pokeReadAll() async {

    emit(const PokeReadState.loadingProgress());

    var result = await _pokeRepository.readAll();
    // The result are handling 
    result.fold(
      () => emit(const PokeReadState.loadingSuccess(KtList.empty())),
      (some) => some.fold(
        (failure) => emit(PokeReadState.loadingFailure(failure)),
        (pokeList) => emit(PokeReadState.loadingSuccess(pokeList)),
      ),
    );
  }
}
