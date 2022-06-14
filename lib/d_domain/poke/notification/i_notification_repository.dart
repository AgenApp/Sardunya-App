import 'package:dartz/dartz.dart';
import 'package:sardunya/d_domain/poke/notification/notification_failure.dart';
import 'package:sardunya/d_domain/poke/notification/notification_object.dart';
// Kind of plan for infrastracture. what must we implementation 
abstract class INotificationRepository {

  Future<void> initNotification();
  late Stream<String?> onNotification;
  Future<Either<NotificationFailure,Unit>> create(NotificationObject notification);
  Future<Either<NotificationFailure,Unit>> delete(NotificationObject notification);
  Future<Either<NotificationFailure,Unit>> update(NotificationObject notification);
  Future<Either<NotificationFailure,NotificationObject>> read(int id);

}