import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sardunya/d_domain/core/value_object.dart';
import 'package:sardunya/d_domain/poke/notification/notification_object.dart';
import 'package:sardunya/d_domain/poke/notification/value_object.dart';
part 'notification_dto.freezed.dart';
part 'notification_dto.g.dart';

//Creating a Data Transfer Object (Dto) with incoming object from front side 
// Transform to editable and savable format for databases
@freezed
class NotificationDto with _$NotificationDto {
  const NotificationDto._();
  const factory NotificationDto({
    required String uniqueId,
    required int databaseId,
    required int timeAsMinute,
    required String title,
    required String content,
  }) = _NotificationDto;

  factory NotificationDto.fronDomain(NotificationObject notification) {
    return NotificationDto(
      uniqueId: notification.uniqueId.toString(),
      databaseId: notification.databaseId,
      timeAsMinute: notification.time.getOrError().inMinutes,
      title: notification.title.getOrError(),
      content: notification.content.getOrError(),
    );
  }

  NotificationObject toDomain() {
    return NotificationObject(
      uniqueId:UniqueId.fromString(uniqueId),
      databaseId: databaseId,
      time: NotificationTime(Duration(minutes:timeAsMinute)),
      title: NotificationTitle(title),
      content: NotificationContent(content),
    );
  }

  factory NotificationDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationDtoFromJson(json);
}
