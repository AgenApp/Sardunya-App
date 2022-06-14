// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'poke_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokeDto _$PokeDtoFromJson(Map<String, dynamic> json) {
  return _PokeDto.fromJson(json);
}

/// @nodoc
mixin _$PokeDto {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  int get databaseId => throw _privateConstructorUsedError;
  @HiveField(2)
  int get timeAsMinute => throw _privateConstructorUsedError;
  @HiveField(3)
  String get title => throw _privateConstructorUsedError;
  @HiveField(4)
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokeDtoCopyWith<PokeDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeDtoCopyWith<$Res> {
  factory $PokeDtoCopyWith(PokeDto value, $Res Function(PokeDto) then) =
      _$PokeDtoCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) int databaseId,
      @HiveField(2) int timeAsMinute,
      @HiveField(3) String title,
      @HiveField(4) String content});
}

/// @nodoc
class _$PokeDtoCopyWithImpl<$Res> implements $PokeDtoCopyWith<$Res> {
  _$PokeDtoCopyWithImpl(this._value, this._then);

  final PokeDto _value;
  // ignore: unused_field
  final $Res Function(PokeDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? databaseId = freezed,
    Object? timeAsMinute = freezed,
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      databaseId: databaseId == freezed
          ? _value.databaseId
          : databaseId // ignore: cast_nullable_to_non_nullable
              as int,
      timeAsMinute: timeAsMinute == freezed
          ? _value.timeAsMinute
          : timeAsMinute // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PokeDtoCopyWith<$Res> implements $PokeDtoCopyWith<$Res> {
  factory _$PokeDtoCopyWith(_PokeDto value, $Res Function(_PokeDto) then) =
      __$PokeDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) int databaseId,
      @HiveField(2) int timeAsMinute,
      @HiveField(3) String title,
      @HiveField(4) String content});
}

/// @nodoc
class __$PokeDtoCopyWithImpl<$Res> extends _$PokeDtoCopyWithImpl<$Res>
    implements _$PokeDtoCopyWith<$Res> {
  __$PokeDtoCopyWithImpl(_PokeDto _value, $Res Function(_PokeDto) _then)
      : super(_value, (v) => _then(v as _PokeDto));

  @override
  _PokeDto get _value => super._value as _PokeDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? databaseId = freezed,
    Object? timeAsMinute = freezed,
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_PokeDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      databaseId: databaseId == freezed
          ? _value.databaseId
          : databaseId // ignore: cast_nullable_to_non_nullable
              as int,
      timeAsMinute: timeAsMinute == freezed
          ? _value.timeAsMinute
          : timeAsMinute // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1, adapterName: 'PokeDtoAdapter')
class _$_PokeDto extends _PokeDto {
  _$_PokeDto(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.databaseId,
      @HiveField(2) required this.timeAsMinute,
      @HiveField(3) required this.title,
      @HiveField(4) required this.content})
      : super._();

  factory _$_PokeDto.fromJson(Map<String, dynamic> json) =>
      _$$_PokeDtoFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final int databaseId;
  @override
  @HiveField(2)
  final int timeAsMinute;
  @override
  @HiveField(3)
  final String title;
  @override
  @HiveField(4)
  final String content;

  @override
  String toString() {
    return 'PokeDto(id: $id, databaseId: $databaseId, timeAsMinute: $timeAsMinute, title: $title, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokeDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.databaseId, databaseId) &&
            const DeepCollectionEquality()
                .equals(other.timeAsMinute, timeAsMinute) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(databaseId),
      const DeepCollectionEquality().hash(timeAsMinute),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$PokeDtoCopyWith<_PokeDto> get copyWith =>
      __$PokeDtoCopyWithImpl<_PokeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokeDtoToJson(this);
  }
}

abstract class _PokeDto extends PokeDto {
  factory _PokeDto(
      {@HiveField(0) required final String id,
      @HiveField(1) required final int databaseId,
      @HiveField(2) required final int timeAsMinute,
      @HiveField(3) required final String title,
      @HiveField(4) required final String content}) = _$_PokeDto;
  _PokeDto._() : super._();

  factory _PokeDto.fromJson(Map<String, dynamic> json) = _$_PokeDto.fromJson;

  @override
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  int get databaseId => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  int get timeAsMinute => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  String get title => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  String get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PokeDtoCopyWith<_PokeDto> get copyWith =>
      throw _privateConstructorUsedError;
}
