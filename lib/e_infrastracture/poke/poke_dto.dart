import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:sardunya/d_domain/core/value_object.dart';
import 'package:sardunya/d_domain/poke/poke.dart';
import 'package:sardunya/d_domain/poke/value_object.dart';
part 'poke_dto.freezed.dart';
part 'poke_dto.g.dart';

//Creating a Data Transfer Object (Dto) with incoming object from front side 
// Transform to editable and savable format for databases
@freezed
  class PokeDto with _$PokeDto {

   const PokeDto._();
  @HiveType(typeId: 1, adapterName:'PokeDtoAdapter')
   factory PokeDto({
    @HiveField(0) required String id,
    @HiveField(1) required int databaseId,
    @HiveField(2) required int timeAsMinute,
    @HiveField(3) required String title,
    @HiveField(4) required String content,
  }) = _PokeDto;

  factory PokeDto.fromDomain(Poke poke) {
    return PokeDto(
      id: poke.id.getOrError(),
      databaseId: poke.databaseId,
      timeAsMinute: poke.time.getOrError().inMinutes,
      title: poke.title.getOrError(),
      content: poke.content.getOrError(),
    );
  }

  factory PokeDto.fromJson(Map<String, dynamic> json) =>
      _$PokeDtoFromJson(json);

  Poke toDomain() {
    return Poke(
      id: UniqueId.fromString(id),
      databaseId: databaseId,
      title: PokeTitle(title),
      time: PokeTime(Duration(minutes: timeAsMinute)),
      content: PokeContent(content),
    );
  }
}
