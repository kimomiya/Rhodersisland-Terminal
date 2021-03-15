// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'bounds.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BoundsTearOff {
  const _$BoundsTearOff();

  _Bounds call({required UniqueId id, required int lower, required int upper}) {
    return _Bounds(
      id: id,
      lower: lower,
      upper: upper,
    );
  }
}

/// @nodoc
const $Bounds = _$BoundsTearOff();

/// @nodoc
mixin _$Bounds {
  UniqueId get id => throw _privateConstructorUsedError;
  int get lower => throw _privateConstructorUsedError;
  int get upper => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoundsCopyWith<Bounds> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoundsCopyWith<$Res> {
  factory $BoundsCopyWith(Bounds value, $Res Function(Bounds) then) =
      _$BoundsCopyWithImpl<$Res>;
  $Res call({UniqueId id, int lower, int upper});
}

/// @nodoc
class _$BoundsCopyWithImpl<$Res> implements $BoundsCopyWith<$Res> {
  _$BoundsCopyWithImpl(this._value, this._then);

  final Bounds _value;
  // ignore: unused_field
  final $Res Function(Bounds) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? lower = freezed,
    Object? upper = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      lower: lower == freezed
          ? _value.lower
          : lower // ignore: cast_nullable_to_non_nullable
              as int,
      upper: upper == freezed
          ? _value.upper
          : upper // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$BoundsCopyWith<$Res> implements $BoundsCopyWith<$Res> {
  factory _$BoundsCopyWith(_Bounds value, $Res Function(_Bounds) then) =
      __$BoundsCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, int lower, int upper});
}

/// @nodoc
class __$BoundsCopyWithImpl<$Res> extends _$BoundsCopyWithImpl<$Res>
    implements _$BoundsCopyWith<$Res> {
  __$BoundsCopyWithImpl(_Bounds _value, $Res Function(_Bounds) _then)
      : super(_value, (v) => _then(v as _Bounds));

  @override
  _Bounds get _value => super._value as _Bounds;

  @override
  $Res call({
    Object? id = freezed,
    Object? lower = freezed,
    Object? upper = freezed,
  }) {
    return _then(_Bounds(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      lower: lower == freezed
          ? _value.lower
          : lower // ignore: cast_nullable_to_non_nullable
              as int,
      upper: upper == freezed
          ? _value.upper
          : upper // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_Bounds implements _Bounds {
  const _$_Bounds({required this.id, required this.lower, required this.upper});

  @override
  final UniqueId id;
  @override
  final int lower;
  @override
  final int upper;

  @override
  String toString() {
    return 'Bounds(id: $id, lower: $lower, upper: $upper)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Bounds &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.lower, lower) ||
                const DeepCollectionEquality().equals(other.lower, lower)) &&
            (identical(other.upper, upper) ||
                const DeepCollectionEquality().equals(other.upper, upper)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(lower) ^
      const DeepCollectionEquality().hash(upper);

  @JsonKey(ignore: true)
  @override
  _$BoundsCopyWith<_Bounds> get copyWith =>
      __$BoundsCopyWithImpl<_Bounds>(this, _$identity);
}

abstract class _Bounds implements Bounds {
  const factory _Bounds(
      {required UniqueId id,
      required int lower,
      required int upper}) = _$_Bounds;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  int get lower => throw _privateConstructorUsedError;
  @override
  int get upper => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BoundsCopyWith<_Bounds> get copyWith => throw _privateConstructorUsedError;
}
