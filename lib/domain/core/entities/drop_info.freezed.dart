// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'drop_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DropInfoTearOff {
  const _$DropInfoTearOff();

  _DropInfo call(
      {required UniqueId id,
      required String itemId,
      required DropType type,
      Bounds? bounds}) {
    return _DropInfo(
      id: id,
      itemId: itemId,
      type: type,
      bounds: bounds,
    );
  }
}

/// @nodoc
const $DropInfo = _$DropInfoTearOff();

/// @nodoc
mixin _$DropInfo {
  UniqueId get id => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  DropType get type => throw _privateConstructorUsedError;
  Bounds? get bounds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DropInfoCopyWith<DropInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropInfoCopyWith<$Res> {
  factory $DropInfoCopyWith(DropInfo value, $Res Function(DropInfo) then) =
      _$DropInfoCopyWithImpl<$Res>;
  $Res call({UniqueId id, String itemId, DropType type, Bounds? bounds});

  $BoundsCopyWith<$Res>? get bounds;
}

/// @nodoc
class _$DropInfoCopyWithImpl<$Res> implements $DropInfoCopyWith<$Res> {
  _$DropInfoCopyWithImpl(this._value, this._then);

  final DropInfo _value;
  // ignore: unused_field
  final $Res Function(DropInfo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? itemId = freezed,
    Object? type = freezed,
    Object? bounds = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DropType,
      bounds: bounds == freezed
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as Bounds?,
    ));
  }

  @override
  $BoundsCopyWith<$Res>? get bounds {
    if (_value.bounds == null) {
      return null;
    }

    return $BoundsCopyWith<$Res>(_value.bounds!, (value) {
      return _then(_value.copyWith(bounds: value));
    });
  }
}

/// @nodoc
abstract class _$DropInfoCopyWith<$Res> implements $DropInfoCopyWith<$Res> {
  factory _$DropInfoCopyWith(_DropInfo value, $Res Function(_DropInfo) then) =
      __$DropInfoCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, String itemId, DropType type, Bounds? bounds});

  @override
  $BoundsCopyWith<$Res>? get bounds;
}

/// @nodoc
class __$DropInfoCopyWithImpl<$Res> extends _$DropInfoCopyWithImpl<$Res>
    implements _$DropInfoCopyWith<$Res> {
  __$DropInfoCopyWithImpl(_DropInfo _value, $Res Function(_DropInfo) _then)
      : super(_value, (v) => _then(v as _DropInfo));

  @override
  _DropInfo get _value => super._value as _DropInfo;

  @override
  $Res call({
    Object? id = freezed,
    Object? itemId = freezed,
    Object? type = freezed,
    Object? bounds = freezed,
  }) {
    return _then(_DropInfo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DropType,
      bounds: bounds == freezed
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as Bounds?,
    ));
  }
}

/// @nodoc
class _$_DropInfo implements _DropInfo {
  const _$_DropInfo(
      {required this.id,
      required this.itemId,
      required this.type,
      this.bounds});

  @override
  final UniqueId id;
  @override
  final String itemId;
  @override
  final DropType type;
  @override
  final Bounds? bounds;

  @override
  String toString() {
    return 'DropInfo(id: $id, itemId: $itemId, type: $type, bounds: $bounds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DropInfo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.bounds, bounds) ||
                const DeepCollectionEquality().equals(other.bounds, bounds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(bounds);

  @JsonKey(ignore: true)
  @override
  _$DropInfoCopyWith<_DropInfo> get copyWith =>
      __$DropInfoCopyWithImpl<_DropInfo>(this, _$identity);
}

abstract class _DropInfo implements DropInfo {
  const factory _DropInfo(
      {required UniqueId id,
      required String itemId,
      required DropType type,
      Bounds? bounds}) = _$_DropInfo;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  String get itemId => throw _privateConstructorUsedError;
  @override
  DropType get type => throw _privateConstructorUsedError;
  @override
  Bounds? get bounds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DropInfoCopyWith<_DropInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
