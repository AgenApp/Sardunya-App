import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sardunya/d_domain/poke/notification/i_notification_repository.dart';
import 'package:sardunya/d_domain/poke/notification/notification_object.dart';
import 'package:sardunya/d_domain/poke/notification/notification_failure.dart';
import 'package:sardunya/e_infrastracture/notification/notification_local_notification_extension.dart';
import 'package:sardunya/e_infrastracture/notification/notification_sqfl_extension.dart';

// working like handle repository and just contain main methods and initializer methods 
// only routing be done 
@LazySingleton(as: INotificationRepository)
class NotificationRepository extends INotificationRepository {
  static final NotificationRepository instance = NotificationRepository._init();
  NotificationRepository._init();
 NotificationRepository();
 @override
  Future<void> initNotification() async {
   await initLocalNotification();
  }

  @override
  Stream<String?> get onNotification =>
      NotificationLocalNotificationExtention.onNotificationBehaviorSubject;

  @override
  Future<Either<NotificationFailure, Unit>> create(
      NotificationObject notification) async {
    
  
    var result = await sqflCreate(notification);
    await dailyNotification(notification);
    return result;
  }

  @override
  Future<Either<NotificationFailure, Unit>> delete(NotificationObject notification) async {
    
    var id = notification.databaseId;
    var result = await sqflDelete(id);
    await notificationsPlugin.cancel(id);
    return result;
  }

  @override
  Future<Either<NotificationFailure, NotificationObject>> read(int id) async {
   
    var result = await sqflRead(id);
    return result;
  }

  @override
  Future<Either<NotificationFailure, Unit>> update(
      NotificationObject notification) async {
   
    var result = await sqflUpdate(notification);
    dailyNotification(notification);
    return result;
  }
  
 
}
