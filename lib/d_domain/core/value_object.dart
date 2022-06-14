import 'package:dartz/dartz.dart';
import 'package:sardunya/d_domain/core/errors.dart';

import 'package:sardunya/d_domain/core/value_failure.dart';
import 'package:uuid/uuid.dart';

// General raw object settings
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;
  // id  is  (result) => result;
  //Left and right result is  handle result and failure together. For more information look up dartz package
  T getOrError() {
    return value.fold((failure) => throw UnexpectedValueError(failure), id);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (failure) => left(failure),
      (r) => right(unit),
    );
  }

  @override
  String toString() => 'ValueObject(value: $value)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
// Unique Id generator 
class UniqueId extends ValueObject<String> {
  const UniqueId._(this.value);
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(
      right(Uuid().v1()),
    );
  }
  factory UniqueId.empty() {
    return UniqueId._(
      right(''),
    );
  }
  factory UniqueId.fromString(String input) {
    return UniqueId._(
      right(input),
    );
  }
}
