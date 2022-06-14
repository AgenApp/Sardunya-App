import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sardunya/d_domain/core/value_object.dart';
import 'package:sardunya/d_domain/poke/i_poke_traffic_repository.dart';
import 'package:sardunya/d_domain/poke/notification/notification_failure.dart';
import 'package:sardunya/d_domain/poke/notification/notification_object.dart';
import 'package:sardunya/d_domain/poke/notification/value_object.dart';
import 'package:sardunya/d_domain/poke/value_object.dart';
import 'package:sardunya/d_domain/poke/poke.dart';
import 'package:sardunya/d_domain/poke/poke_failure.dart';

part 'poke_form_event.dart';
part 'poke_form_state.dart';
part 'poke_form_bloc.freezed.dart';

// This bloc handle form operation
@injectable
class PokeFormBloc extends Bloc<PokeFormEvent, PokeFormState> {
  late StreamSubscription _trafficCRUDSubscription;

  final IPokeTrafficRepository _pokeTrafficRepository;

  PokeFormBloc(this._pokeTrafficRepository) : super(PokeFormState.initial()) {
  
  //Stream initialize
    _trafficCRUDSubscription = _pokeTrafficRepository
        .trafficCRUD(Poke.empty(), NotificationObject.empty(),
            crud: TrafficCRUD.initial)
        .listen((_) async {
      await _trafficCRUDSubscription.cancel();
    });

    on<PokeFormEvent>(
      (event, emit) {
        // Handle the states changing
        event.map(
          // Initialize states poke with incoming from form
          initialized: (e) async {
            emit(
              state.copyWith(
                poke: e.poke,
                notification: NotificationObject.fromPoke(e.poke),
                saveSuccessOrFailureOption: none(),
                isEditing: e.poke.databaseId != -1,
              ),
            );
          },
          //for immediately give reaction for title changes
          titleChanged: (e) async {
            emit(
              state.copyWith(
                poke: state.poke.copyWith(
                  title: PokeTitle(e.titleStr ?? ' '),
                ),
                notification: state.notification.copyWith(
                  title: NotificationTitle(e.titleStr ?? ' '),
                ),
                saveSuccessOrFailureOption: none(),
              ),
            );
          },
          //Immediately give reaction for content changes
          contentChanced: (e) async {
            emit(
              state.copyWith(
                poke: state.poke.copyWith(
                  content: PokeContent(e.constentStr ?? ' '),
                ),
                notification: state.notification.copyWith(
                  content: NotificationContent(e.constentStr ?? ' '),
                ),
                saveSuccessOrFailureOption: none(),
              ),
            );
          },
          //Immediately give reaction for time changes
          timeChanced: (e) async {
            emit(
              state.copyWith(
                poke: state.poke.copyWith(
                  time: PokeTime(e.timeDuration),
                ),
                notification: state.notification.copyWith(
                  time: NotificationTime(e.timeDuration),
                ),
                saveSuccessOrFailureOption: none(),
              ),
            );
          },
          // Starting the save process
          saved: (e) async {
            
            Either<Either<PokeFailure, NotificationFailure>, Unit>?
                failureOrSuccess;
            emit(
              state.copyWith(
                isSaving: true,
                saveSuccessOrFailureOption: none(),
              ),
            );

            if (state.poke.failureOrOption.isNone()) {
                
                // This method is kind of CRUD all of one method
                // This method is brodcasting two kind result 1.about poke 2. about notification
                // If throwed error about 1. => this is fatal one
                // If throwed erroe about 2. => ths is error but not fatal one and it is dont break the app flow 

                _trafficCRUDSubscription = _pokeTrafficRepository
                    .trafficCRUD(state.poke, state.notification,
                        crud:state.isEditing ? TrafficCRUD.update : TrafficCRUD.create )
                    .listen((event) async {
                  
                  failureOrSuccess = event;
                  add(PokeFormEvent.failureOrSuccess(failureOrSuccess));
                });
               
            } else {}
          },
          // Handled the final result
          failureOrSuccess: (e) async {
            emit(
              state.copyWith(
                isSaving: false,
                showErrorMessages: true,
                saveSuccessOrFailureOption: optionOf(e.failureOrSuccess),
              ),
            );
          },
        );
      },
    );
  }
  @override
  Future<void> close() {
    _trafficCRUDSubscription.cancel();
    return super.close();
  }
}
