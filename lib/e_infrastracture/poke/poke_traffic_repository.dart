import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sardunya/d_domain/poke/i_poke_repository.dart';
import 'package:sardunya/d_domain/poke/i_poke_traffic_repository.dart';
import 'package:sardunya/d_domain/poke/notification/i_notification_repository.dart';
import 'package:sardunya/d_domain/poke/poke_failure.dart';
import 'package:sardunya/d_domain/poke/poke.dart';
import 'package:sardunya/d_domain/poke/notification/notification_object.dart';
import 'package:sardunya/d_domain/poke/notification/notification_failure.dart';

// making result hierarchy and data routing
// hierarchic result for non-stop app flow
@LazySingleton(as: IPokeTrafficRepository)
class PokeTraficRepository implements IPokeTrafficRepository {
  PokeTraficRepository(this._pokeRepository, this._notificationRepository);
  final IPokeRepository _pokeRepository;
  final INotificationRepository _notificationRepository;

  @override
  Stream<Either<Either<PokeFailure, NotificationFailure>, Unit>> trafficCRUD(
      Poke poke, NotificationObject notification,
      {required TrafficCRUD crud}) async* {
    Either<PokeFailure, Unit> pokeResult;

    switch (crud) {
      case TrafficCRUD.create:
        pokeResult = await _pokeRepository.create(poke);
        pokeResult.fold(
            (l) => print('pokeResult Left'), (r) => print('pokeResult right'));

        break;
      case TrafficCRUD.update:
        pokeResult = await _pokeRepository.update(poke);
        break;
      case TrafficCRUD.delete:
        pokeResult = await _pokeRepository.delete(poke);
        break;
      case TrafficCRUD.initial:
        pokeResult = right(unit);
        break;
      default:
        pokeResult = left(const PokeFailure.trafficCRUD());
        break;
    }

    yield* pokeResult.fold(
      (failurePoke) async* {
        yield left(
          left(failurePoke),
        );
      },
      (_) async* {
        yield right(unit);

        Either<NotificationFailure, Unit> notificationResult;

        switch (crud) {
          case TrafficCRUD.create:
          
            notification = notification.copyWith(databaseId: poke.databaseId);

            notificationResult =
                await _notificationRepository.create(notification);
            break;
          case TrafficCRUD.update:
            notificationResult =
                await _notificationRepository.update(notification);
            break;
          case TrafficCRUD.delete:
            notificationResult =
                await _notificationRepository.delete(notification);
            break;
          case TrafficCRUD.initial:
            notificationResult = right(unit);
            break;
          default:
            notificationResult = left(const NotificationFailure.trafficCRUD());
            break;
        }
        notificationResult.leftMap(
          (notificationFailure) async* {
            yield left(
              right(notificationFailure),
            );
          },
        );
      },
    );
  }
}
