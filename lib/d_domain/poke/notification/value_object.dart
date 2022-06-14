import 'package:sardunya/d_domain/core/value_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:sardunya/d_domain/core/value_object.dart';

// Creating value object with raw input  for validation progress
class NotificationContent extends ValueObject<String> {
  NotificationContent._(this.value);
  @override
  final Either<ValueFailure<String>, String> value;

  factory NotificationContent(String input) {
    return NotificationContent._(right(input));
  }
}

class NotificationTitle extends ValueObject<String> {
  NotificationTitle._(this.value);
  @override
  final Either<ValueFailure<String>, String> value;

  factory NotificationTitle(String input) {
    return NotificationTitle._( right(input));
  }
}

class NotificationTime extends ValueObject<Duration> {

  NotificationTime._(this.value);

  @override
  final Either<ValueFailure<Duration>, Duration> value;

  factory NotificationTime(Duration input) {
    return NotificationTime._(right(input));
  }
}
