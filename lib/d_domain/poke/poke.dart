import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sardunya/d_domain/core/value_failure.dart';
import 'package:sardunya/d_domain/core/value_object.dart';
import 'package:sardunya/d_domain/poke/value_object.dart';
part 'poke.freezed.dart';
// create main object (poke object) object with raw inputs
@freezed
abstract class Poke with _$Poke {
  const Poke._();
  const factory Poke({
    required UniqueId id,
    required int databaseId,
    required PokeTitle title,
    required PokeTime time,
    required PokeContent content,
  }) = _Poke;
  // for initialize
   factory Poke.empty() => Poke(
        id: UniqueId(),
        databaseId: -1,
        content: PokeContent(' '),
        time: PokeTime(Duration.zero),
        title: PokeTitle(' '),
      );
  // all failure check in one method 
  Option<ValueFailure<dynamic>> get failureOrOption {
    return time.failureOrUnit
        .andThen(title.failureOrUnit)
        .andThen(content.failureOrUnit)
        .fold((f) => some(f), (r) => none());
  }
}
