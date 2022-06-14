import 'package:freezed_annotation/freezed_annotation.dart';
part 'value_failure.freezed.dart';

// to handle forms input error
@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  
  const factory ValueFailure.empty({
    required T failureValue,
  }) = Empty<T>;

  const factory ValueFailure.exceedingLenth({
    required T failureValue,
    required int max,
  }) = _ExceedingLenth<T>;
}
