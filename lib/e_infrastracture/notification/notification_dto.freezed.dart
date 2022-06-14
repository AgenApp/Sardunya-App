// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationDto _$NotificationDtoFromJson(Map<String, dynamic> json) {
  return _NotificationDto.fromJson(json);
}

/// @nodoc
mixin _$NotificationDto {
  String get uniqueId => throw _privateConstructorUsedError;
  int get databaseId => throw _privateConstructorUsedError;
  int get timeAsMinute => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationDtoCopyWith<NotificationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDtoCopyWith<$Res> {
  factory $NotificationDtoCopyWith(
          NotificationDto value, $Res Function(NotificationDto) then) =
      _$NotificationDtoCopyWithImpl<$Res>;
  $Res call(
      {String uniqueId,
      int databaseId,
      int timeAsMinute,
      String title,
      String content});
}

/// @nodoc
class _$NotificationDtoCopyWithImpl<$Res>
    implements $NotificationDtoCopyWith<$Res> {
  _$NotificationDtoCopyWithImpl(this._value, this._then);

  final NotificationDto _value;
  // ignore: unused_field
  final $Res Function(NotificationDto) _then;

  @override
  $Res call({
    Object? uniqueId = freezed,
    Object? databaseId = freezed,
    Object? timeAsMinute = freezed,
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      uniqueId: uniqueId == freezed
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
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
abstract class _$NotificationDtoCopyWith<$Res>
    implements $NotificationDtoCopyWith<$Res> {
  factory _$NotificationDtoCopyWith(
          _NotificationDto value, $Res Function(_NotificationDto) then) =
      __$NotificationDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uniqueId,
      int databaseId,
      int timeAsMinute,
      String title,
      String content});
}

/// @nodoc
class __$NotificationDtoCopyWithImpl<$Res>
    extends _$NotificationDtoCopyWithImpl<$Res>
    implements _$NotificationDtoCopyWith<$Res> {
  __$NotificationDtoCopyWithImpl(
      _NotificationDto _value, $Res Function(_NotificationDto) _then)
      : super(_value, (v) => _then(v as _NotificationDto));

  @override
  _NotificationDto get _value => super._value as _NotificationDto;

  @override
  $Res call({
    Object? uniqueId = freezed,
    Object? databaseId = freezed,
    Object? timeAsMinute = freezed,
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_NotificationDto(
      uniqueId: uniqueId == freezed
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
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
class _$_NotificationDto extends _NotificationDto {
  const _$_NotificationDto(
      {required this.uniqueId,
      required this.databaseId,
      required this.timeAsMinute,
      required this.title,
      required this.content})
      : super._();

  factory _$_NotificationDto.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationDtoFromJson(json);

  @override
  final String uniqueId;
  @override
  final int databaseId;
  @override
  final int timeAsMinute;
  @override
  final String title;
  @override
  final String content;

  @override
  String toString() {
    return 'NotificationDto(uniqueId: $uniqueId, databaseId: $databaseId, timeAsMinute: $timeAsMinute, title: $title, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationDto &&
            const DeepCollectionEquality().equals(other.uniqueId, uniqueId) &&
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
      const DeepCollectionEquality().hash(uniqueId),
      const DeepCollectionEquality().hash(databaseId),
      const DeepCollectionEquality().hash(timeAsMinute),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$NotificationDtoCopyWith<_NotificationDto> get copyWith =>
      __$NotificationDtoCopyWithImpl<_NotificationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationDtoToJson(this);
  }
}

abstract class _NotificationDto extends NotificationDto {
  const factory _NotificationDto(
      {required final String uniqueId,
      required final int databaseId,
      required final int timeAsMinute,
      required final String title,
      required final String content}) = _$_NotificationDto;
  const _NotificationDto._() : super._();

  factory _NotificationDto.fromJson(Map<String, dynamic> json) =
      _$_NotificationDto.fromJson;

  @override
  String get uniqueId => throw _privateConstructorUsedError;
  @override
  int get databaseId => throw _privateConstructorUsedError;
  @override
  int get timeAsMinute => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NotificationDtoCopyWith<_NotificationDto> get copyWith =>
      throw _privateConstructorUsedError;
}
