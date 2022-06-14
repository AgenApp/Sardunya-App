import 'package:freezed_annotation/freezed_annotation.dart';
part 'notification_failure.freezed.dart';

// Handle to section specific error
@freezed
class NotificationFailure with _$NotificationFailure{
  const factory NotificationFailure() = _NotificationFailure;
  const factory NotificationFailure.dbInsertFail() = _DbInsertFail;
  const factory NotificationFailure.dbDeleteFail() = _DbDeleteFail;
  const factory NotificationFailure.dbReadFail() = _DbReadFail;
  const factory NotificationFailure.dbUpdateFail() = _DbUpdateFail;
  const factory NotificationFailure.trafficCRUD() = _TrafficCRUD;
}