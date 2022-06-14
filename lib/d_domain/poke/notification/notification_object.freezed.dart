// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationObject {
  UniqueId get uniqueId => throw _privateConstructorUsedError;
  int get databaseId => throw _privateConstructorUsedError;
  NotificationTime get time => throw _privateConstructorUsedError;
  NotificationTitle get title => throw _privateConstructorUsedError;
  NotificationContent get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationObjectCopyWith<NotificationObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationObjectCopyWith<$Res> {
  factory $NotificationObjectCopyWith(
          NotificationObject value, $Res Function(NotificationObject) then) =
      _$NotificationObjectCopyWithImpl<$Res>;
  $Res call(
      {UniqueId uniqueId,
      int databaseId,
      NotificationTime time,
      NotificationTitle title,
      NotificationContent content});
}

/// @nodoc
class _$NotificationObjectCopyWithImpl<$Res>
    implements $NotificationObjectCopyWith<$Res> {
  _$NotificationObjectCopyWithImpl(this._value, this._then);

  final NotificationObject _value;
  // ignore: unused_field
  final $Res Function(NotificationObject) _then;

  @override
  $Res call({
    Object? uniqueId = freezed,
    Object? databaseId = freezed,
    Object? time = freezed,
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      uniqueId: uniqueId == freezed
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      databaseId: databaseId == freezed
          ? _value.databaseId
          : databaseId // ignore: cast_nullable_to_non_nullable
              as int,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as NotificationTime,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as NotificationTitle,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as NotificationContent,
    ));
  }
}

/// @nodoc
abstract class _$NotificationObjectCopyWith<$Res>
    implements $NotificationObjectCopyWith<$Res> {
  factory _$NotificationObjectCopyWith(
          _NotificationObject value, $Res Function(_NotificationObject) then) =
      __$NotificationObjectCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId uniqueId,
      int databaseId,
      NotificationTime time,
      NotificationTitle title,
      NotificationContent content});
}

/// @nodoc
class __$NotificationObjectCopyWithImpl<$Res>
    extends _$NotificationObjectCopyWithImpl<$Res>
    implements _$NotificationObjectCopyWith<$Res> {
  __$NotificationObjectCopyWithImpl(
      _NotificationObject _value, $Res Function(_NotificationObject) _then)
      : super(_value, (v) => _then(v as _NotificationObject));

  @override
  _NotificationObject get _value => super._value as _NotificationObject;

  @override
  $Res call({
    Object? uniqueId = freezed,
    Object? databaseId = freezed,
    Object? time = freezed,
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_NotificationObject(
      uniqueId: uniqueId == freezed
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      databaseId: databaseId == freezed
          ? _value.databaseId
          : databaseId // ignore: cast_nullable_to_non_nullable
              as int,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as NotificationTime,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as NotificationTitle,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as NotificationContent,
    ));
  }
}

/// @nodoc

class _$_NotificationObject implements _NotificationObject {
  const _$_NotificationObject(
      {required this.uniqueId,
      required this.databaseId,
      required this.time,
      required this.title,
      required this.content});

  @override
  final UniqueId uniqueId;
  @override
  final int databaseId;
  @override
  final NotificationTime time;
  @override
  final NotificationTitle title;
  @override
  final NotificationContent content;

  @override
  String toString() {
    return 'NotificationObject(uniqueId: $uniqueId, databaseId: $databaseId, time: $time, title: $title, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationObject &&
            const DeepCollectionEquality().equals(other.uniqueId, uniqueId) &&
            const DeepCollectionEquality()
                .equals(other.databaseId, databaseId) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uniqueId),
      const DeepCollectionEquality().hash(databaseId),
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$NotificationObjectCopyWith<_NotificationObject> get copyWith =>
      __$NotificationObjectCopyWithImpl<_NotificationObject>(this, _$identity);
}

abstract class _NotificationObject implements NotificationObject {
  const factory _NotificationObject(
      {required final UniqueId uniqueId,
      required final int databaseId,
      required final NotificationTime time,
      required final NotificationTitle title,
      required final NotificationContent content}) = _$_NotificationObject;

  @override
  UniqueId get uniqueId => throw _privateConstructorUsedError;
  @override
  int get databaseId => throw _privateConstructorUsedError;
  @override
  NotificationTime get time => throw _privateConstructorUsedError;
  @override
  NotificationTitle get title => throw _privateConstructorUsedError;
  @override
  NotificationContent get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NotificationObjectCopyWith<_NotificationObject> get copyWith =>
      throw _privateConstructorUsedError;
}
