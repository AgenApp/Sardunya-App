import 'package:freezed_annotation/freezed_annotation.dart';
part 'poke_failure.freezed.dart';
// Handle to section specific error
@freezed
class PokeFailure with _$PokeFailure{
  const factory PokeFailure() = _PokeFailure;
  const factory PokeFailure.trafficCRUD() = _TrafficCRUD;
  const factory PokeFailure.databaseNotFound() = _DatabaseNotFound;

}