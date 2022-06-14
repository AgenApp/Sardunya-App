import 'package:dartz/dartz.dart';
import 'package:sardunya/d_domain/poke/notification/notification_failure.dart';
import 'package:sardunya/d_domain/poke/notification/notification_object.dart';
import 'package:sardunya/d_domain/poke/poke.dart';
import 'package:sardunya/d_domain/poke/poke_failure.dart';
enum TrafficCRUD {create,update,delete,initial}

// trafficCURUD method skeleton plan for implementation.
abstract class IPokeTrafficRepository {
  Stream<Either<Either<PokeFailure, NotificationFailure>, Unit>> trafficCRUD(
    Poke poke,
    NotificationObject notification, {
    required TrafficCRUD crud,
  });
}
