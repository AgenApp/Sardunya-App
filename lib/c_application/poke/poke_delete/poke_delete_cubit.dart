import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sardunya/d_domain/poke/i_poke_repository.dart';
import 'package:sardunya/d_domain/poke/i_poke_traffic_repository.dart';
import 'package:sardunya/d_domain/poke/notification/notification_failure.dart';
import 'package:sardunya/d_domain/poke/notification/notification_object.dart';
import 'package:sardunya/d_domain/poke/poke.dart';
import 'package:sardunya/d_domain/poke/poke_failure.dart';

part 'poke_delete_state.dart';
part 'poke_delete_cubit.freezed.dart';

@injectable
class PokeDeleteCubit extends Cubit<PokeDeleteState> {
  PokeDeleteCubit(this._pokeTrafficRepository)
      : super(const PokeDeleteState.initial());

  final IPokeTrafficRepository _pokeTrafficRepository;
  //Stream initialize
  late StreamSubscription _trafficCRUDSubscription = _pokeTrafficRepository
      .trafficCRUD(
    Poke.empty(),
    NotificationObject.empty(),
    crud: TrafficCRUD.initial,
  )
      .listen((event) async {
    await _trafficCRUDSubscription.cancel();
  });
  //

  pokeDelete(Poke poke) async {
    emit(const PokeDeleteState.progress());
   
    // This method is kind of CRUD all of one method
    // This method is brodcasting two kind result 1.about poke 2. about notification
    // If throwed error about 1. => this is fatal one
    // If throwed erroe about 2. => ths is error but not fatal one and it is dont break the app flow 
    _trafficCRUDSubscription = _pokeTrafficRepository
        .trafficCRUD(
      poke,
      NotificationObject.fromPoke(poke),
      crud: TrafficCRUD.delete,
    )
        .listen((event) {
          emitter(event);
      
    });
 
   
  }
  // The result are handling 
  emitter(Either<Either<PokeFailure, NotificationFailure>, Unit> result){
     result.fold(
      (eitherFailure) => eitherFailure.fold(
        (failure) => emit(
          //failure is fatal one ↓
          PokeDeleteState.failure(failure),
        ),
        // failure but not fatal one ↓ this error about notification and flow is not break 
        (_)=>emit(const PokeDeleteState.success())
      ),
      (_) => emit(const PokeDeleteState.success()),
    );
    
  }

  @override
  Future<void> close() {
    _trafficCRUDSubscription.cancel();
    return super.close();
  }
}
