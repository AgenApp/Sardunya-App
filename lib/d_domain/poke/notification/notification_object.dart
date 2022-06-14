import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sardunya/d_domain/core/value_object.dart';
import 'package:sardunya/d_domain/poke/notification/value_object.dart';
import 'package:sardunya/d_domain/poke/poke.dart';
part 'notification_object.freezed.dart';

String tableNotification = 'notification';
// create notification object
@freezed
class NotificationObject with _$NotificationObject {
  const factory NotificationObject({
    required UniqueId uniqueId,
    required int databaseId,
    required NotificationTime time,
    required NotificationTitle title,
    required NotificationContent content,
  }) = _NotificationObject;

  // create notification object with poke object
  factory NotificationObject.fromPoke(Poke poke) {
    return NotificationObject(
      uniqueId: poke.id,
      databaseId: poke.databaseId,
      time: NotificationTime(poke.time.getOrError()),
      title: NotificationTitle(poke.title.getOrError()),
      content: NotificationContent(poke.content.getOrError()),
    );
  }
  // for initialize
  factory NotificationObject.empty() {
    return NotificationObject(
      uniqueId: UniqueId.empty(),
      databaseId: -1,
      time: NotificationTime(Duration.zero),
      title: NotificationTitle(''),
      content: NotificationContent(''),
    );
  }
}
// SqLite database naming
class NotificationFields {
  static final List<String> values = [
    databaseId,
    uniqueId,
    time,
    title,
    content
  ];
  static const String databaseId = 'databaseId';
  static const String uniqueId = 'uniqueId';
  static const String time = 'timeAsMinute';
  static const String title = 'title';
  static const String content = 'content';
}
