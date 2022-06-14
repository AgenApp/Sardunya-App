// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokeDtoAdapter extends TypeAdapter<_$_PokeDto> {
  @override
  final int typeId = 1;

  @override
  _$_PokeDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_PokeDto(
      id: fields[0] as String,
      databaseId: fields[1] as int,
      timeAsMinute: fields[2] as int,
      title: fields[3] as String,
      content: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_PokeDto obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.databaseId)
      ..writeByte(2)
      ..write(obj.timeAsMinute)
      ..writeByte(3)
      ..write(obj.title)
      ..writeByte(4)
      ..write(obj.content);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokeDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokeDto _$$_PokeDtoFromJson(Map<String, dynamic> json) => _$_PokeDto(
      id: json['id'] as String,
      databaseId: json['databaseId'] as int,
      timeAsMinute: json['timeAsMinute'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$_PokeDtoToJson(_$_PokeDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'databaseId': instance.databaseId,
      'timeAsMinute': instance.timeAsMinute,
      'title': instance.title,
      'content': instance.content,
    };
