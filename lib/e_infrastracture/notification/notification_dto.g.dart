// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationDto _$$_NotificationDtoFromJson(Map<String, dynamic> json) =>
    _$_NotificationDto(
      uniqueId: json['uniqueId'] as String,
      databaseId: json['databaseId'] as int,
      timeAsMinute: json['timeAsMinute'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$_NotificationDtoToJson(_$_NotificationDto instance) =>
    <String, dynamic>{
      'uniqueId': instance.uniqueId,
      'databaseId': instance.databaseId,
      'timeAsMinute': instance.timeAsMinute,
      'title': instance.title,
      'content': instance.content,
    };
