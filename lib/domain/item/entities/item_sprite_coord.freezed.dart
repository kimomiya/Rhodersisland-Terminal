// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'item_sprite_coord.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ItemSpriteCoordTearOff {
  const _$ItemSpriteCoordTearOff();

  _ItemSpriteCoord call({required UniqueId id, int? x, int? y}) {
    return _ItemSpriteCoord(
      id: id,
      x: x,
      y: y,
    );
  }
}

/// @nodoc
const $ItemSpriteCoord = _$ItemSpriteCoordTearOff();

/// @nodoc
mixin _$ItemSpriteCoord {
  UniqueId get id => throw _privateConstructorUsedError;
  int? get x => throw _privateConstructorUsedError;
  int? get y => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemSpriteCoordCopyWith<ItemSpriteCoord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemSpriteCoordCopyWith<$Res> {
  factory $ItemSpriteCoordCopyWith(
          ItemSpriteCoord value, $Res Function(ItemSpriteCoord) then) =
      _$ItemSpriteCoordCopyWithImpl<$Res>;
  $Res call({UniqueId id, int? x, int? y});
}

/// @nodoc
class _$ItemSpriteCoordCopyWithImpl<$Res>
    implements $ItemSpriteCoordCopyWith<$Res> {
  _$ItemSpriteCoordCopyWithImpl(this._value, this._then);

  final ItemSpriteCoord _value;
  // ignore: unused_field
  final $Res Function(ItemSpriteCoord) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int?,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ItemSpriteCoordCopyWith<$Res>
    implements $ItemSpriteCoordCopyWith<$Res> {
  factory _$ItemSpriteCoordCopyWith(
          _ItemSpriteCoord value, $Res Function(_ItemSpriteCoord) then) =
      __$ItemSpriteCoordCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, int? x, int? y});
}

/// @nodoc
class __$ItemSpriteCoordCopyWithImpl<$Res>
    extends _$ItemSpriteCoordCopyWithImpl<$Res>
    implements _$ItemSpriteCoordCopyWith<$Res> {
  __$ItemSpriteCoordCopyWithImpl(
      _ItemSpriteCoord _value, $Res Function(_ItemSpriteCoord) _then)
      : super(_value, (v) => _then(v as _ItemSpriteCoord));

  @override
  _ItemSpriteCoord get _value => super._value as _ItemSpriteCoord;

  @override
  $Res call({
    Object? id = freezed,
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_ItemSpriteCoord(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int?,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
class _$_ItemSpriteCoord implements _ItemSpriteCoord {
  const _$_ItemSpriteCoord({required this.id, this.x, this.y});

  @override
  final UniqueId id;
  @override
  final int? x;
  @override
  final int? y;

  @override
  String toString() {
    return 'ItemSpriteCoord(id: $id, x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemSpriteCoord &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.x, x) ||
                const DeepCollectionEquality().equals(other.x, x)) &&
            (identical(other.y, y) ||
                const DeepCollectionEquality().equals(other.y, y)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(x) ^
      const DeepCollectionEquality().hash(y);

  @JsonKey(ignore: true)
  @override
  _$ItemSpriteCoordCopyWith<_ItemSpriteCoord> get copyWith =>
      __$ItemSpriteCoordCopyWithImpl<_ItemSpriteCoord>(this, _$identity);
}

abstract class _ItemSpriteCoord implements ItemSpriteCoord {
  const factory _ItemSpriteCoord({required UniqueId id, int? x, int? y}) =
      _$_ItemSpriteCoord;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  int? get x => throw _privateConstructorUsedError;
  @override
  int? get y => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemSpriteCoordCopyWith<_ItemSpriteCoord> get copyWith =>
      throw _privateConstructorUsedError;
}
