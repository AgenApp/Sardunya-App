import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:sardunya/d_domain/core/errors.dart';
import 'package:sardunya/d_domain/core/value_failure.dart';
import 'package:sardunya/d_domain/core/value_object.dart';
import 'package:sardunya/d_domain/core/value_validation.dart';

const maxTileLenth = 30;
const maxContentLenth = 400;
// Creating value object with raw input  for validation progress
class PokeTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const PokeTitle._(this.value);
  factory PokeTitle(String input) {
    return PokeTitle._(right(input)
        // validateIsEmpty(input)
        //   .flatMap((a) =>
        // ValueValidation.validateIsExceedingLenth(input, maxTileLenth)
        //),
        );
  }
}

class PokeContent extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const PokeContent._(this.value);

  factory PokeContent(String input) {
    return PokeContent._(right(input)
      // ValueValidation.validateIsExceedingLenth(input, maxContentLenth),
    );
  }
}

class PokeTime extends ValueObject<Duration> {
  @override
  final Either<ValueFailure<Duration>, Duration> value;

  // @override
  // getOrError({WhereGetOrError where = WhereGetOrError.toRepository}) {
  //   if (where == WhereGetOrError.toRepository) {
  //     return value.fold(
  //         (f) => throw UnexpectedValueError(f), (r) => r.inMinutes);
  //   }
  //   if (where == WhereGetOrError.toPresentation) {
  //     return value.fold(
  //         (f) => throw UnexpectedValueError(f), (r) => 
  //   }
  //   if (where == WhereGetOrError.toEditing) {
  //     return value.fold((f) => throw UnexpectedValueError(f), (r) => r);
  //   }

  //   ;
  // }

  const PokeTime._(this.value);

  factory PokeTime(Duration input) {
    return PokeTime._(right(input));
  }

  // factory PokeTime.fromIntMinut(int input) {
  //   final duration = Duration(minutes: input);
  //   return PokeTime._(right(duration));
  // }
}
