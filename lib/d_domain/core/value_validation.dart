import 'package:dartz/dartz.dart';
import 'package:sardunya/d_domain/core/value_failure.dart';

// Validation rule settings
mixin ValueValidation {
  static Either<ValueFailure<String>, String> validateIsEmpty(String input) {
    if (input.isNotEmpty) {
      return right(input);
    } else {
      return left(ValueFailure.empty(failureValue: input));
    }
  }

  static Either<ValueFailure<String>, String> validateIsExceedingLenth(
      String input, int max) {
    if (input.length <= max) {
      return right(input);
    } else {
      return left(ValueFailure.exceedingLenth(failureValue: input, max: max));
    }
  }
  
}
