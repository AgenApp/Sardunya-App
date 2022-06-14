// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'poke.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Poke {
  UniqueId get id => throw _privateConstructorUsedError;
  int get databaseId => throw _privateConstructorUsedError;
  PokeTitle get title => throw _privateConstructorUsedError;
  PokeTime get time => throw _privateConstructorUsedError;
  PokeContent get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokeCopyWith<Poke> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeCopyWith<$Res> {
  factory $PokeCopyWith(Poke value, $Res Function(Poke) then) =
      _$PokeCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      int databaseId,
      PokeTitle title,
      PokeTime time,
      PokeContent content});
}

/// @nodoc
class _$PokeCopyWithImpl<$Res> implements $PokeCopyWith<$Res> {
  _$PokeCopyWithImpl(this._value, this._then);

  final Poke _value;
  // ignore: unused_field
  final $Res Function(Poke) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? databaseId = freezed,
    Object? title = freezed,
    Object? time = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      databaseId: databaseId == freezed
          ? _value.databaseId
          : databaseId // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as PokeTitle,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as PokeTime,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as PokeContent,
    ));
  }
}

/// @nodoc
abstract class _$PokeCopyWith<$Res> implements $PokeCopyWith<$Res> {
  factory _$PokeCopyWith(_Poke value, $Res Function(_Poke) then) =
      __$PokeCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      int databaseId,
      PokeTitle title,
      PokeTime time,
      PokeContent content});
}

/// @nodoc
class __$PokeCopyWithImpl<$Res> extends _$PokeCopyWithImpl<$Res>
    implements _$PokeCopyWith<$Res> {
  __$PokeCopyWithImpl(_Poke _value, $Res Function(_Poke) _then)
      : super(_value, (v) => _then(v as _Poke));

  @override
  _Poke get _value => super._value as _Poke;

  @override
  $Res call({
    Object? id = freezed,
    Object? databaseId = freezed,
    Object? title = freezed,
    Object? time = freezed,
    Object? content = freezed,
  }) {
    return _then(_Poke(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      databaseId: databaseId == freezed
          ? _value.databaseId
          : databaseId // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as PokeTitle,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as PokeTime,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as PokeContent,
    ));
  }
}

/// @nodoc

class _$_Poke extends _Poke {
  const _$_Poke(
      {required this.id,
      required this.databaseId,
      required this.title,
      required this.time,
      required this.content})
      : super._();

  @override
  final UniqueId id;
  @override
  final int databaseId;
  @override
  final PokeTitle title;
  @override
  final PokeTime time;
  @override
  final PokeContent content;

  @override
  String toString() {
    return 'Poke(id: $id, databaseId: $databaseId, title: $title, time: $time, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Poke &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.databaseId, databaseId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(databaseId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$PokeCopyWith<_Poke> get copyWith =>
      __$PokeCopyWithImpl<_Poke>(this, _$identity);
}

abstract class _Poke extends Poke {
  const factory _Poke(
      {required final UniqueId id,
      required final int databaseId,
      required final PokeTitle title,
      required final PokeTime time,
      required final PokeContent content}) = _$_Poke;
  const _Poke._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  int get databaseId => throw _privateConstructorUsedError;
  @override
  PokeTitle get title => throw _privateConstructorUsedError;
  @override
  PokeTime get time => throw _privateConstructorUsedError;
  @override
  PokeContent get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PokeCopyWith<_Poke> get copyWith => throw _privateConstructorUsedError;
}
