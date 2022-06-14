import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sardunya/a_core/extensions/int_extension.dart';
import 'package:sardunya/d_domain/poke/notification/i_notification_repository.dart';
import 'package:sardunya/d_domain/poke/notification/notification_object.dart';
import 'package:sardunya/e_infrastracture/notification/notification_dto.dart';
import 'package:timezone/timezone.dart' as tz;

 // extension but workin like a data repository 
 // for handle to logicall issue about to notification

extension NotificationLocalNotificationExtention on INotificationRepository {

  static final FlutterLocalNotificationsPlugin _notificationPlugin =
      FlutterLocalNotificationsPlugin();

  FlutterLocalNotificationsPlugin get notificationsPlugin => _notificationPlugin;

  static final BehaviorSubject<String?> onNotificationBehaviorSubject =
      BehaviorSubject<String>();

 //  methods at here is standard fluter_local_notification package settings

  Future<void> initLocalNotification({bool initSchedule = false}) async {
    
    var android = AndroidInitializationSettings('notification_icon');
    final iOS = IOSInitializationSettings();
    final initializationSettings =
        InitializationSettings(android: android, iOS: iOS);

    await _notificationPlugin.initialize(
      initializationSettings,
      onSelectNotification: (payload) async {
        onNotificationBehaviorSubject.add(payload);
      },
    );
  }

  NotificationDetails _notificationDetails() {
    return const NotificationDetails(
      android: AndroidNotificationDetails('channel Id', 'channel Name',
          channelDescription: 'channel description',
          importance: Importance.max),
      iOS: IOSNotificationDetails(),
    );
  }

  Future<tz.TZDateTime> _scheduleDaily(Time time) async {
    final localName = await FlutterNativeTimezone.getLocalTimezone();
    final tzLocal = tz.getLocation(localName);
    final now = tz.TZDateTime.now(tzLocal);
    final scheduleDate = tz.TZDateTime(
      tzLocal,
      now.year,
      now.month,
      now.day,
      time.hour,
      time.minute,
      time.second,
    );

    return scheduleDate.isBefore(now)
        ? scheduleDate.add(const Duration(days: 1))
        : scheduleDate;
  }

  Future<void> dailyNotification(NotificationObject notification,
     ) async {
        NotificationDto notificationDto = NotificationDto.fronDomain(notification);
    return await _notificationPlugin.zonedSchedule(
      notificationDto.databaseId,
      notificationDto.title,
      notificationDto.content,
      await _scheduleDaily(
        Time(
          notificationDto.timeAsMinute.asHour(),
          notificationDto.timeAsMinute.asMinute(),
        ),
      ),
      _notificationDetails(),
      androidAllowWhileIdle: true,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: DateTimeComponents.time,
    );
  }
}
