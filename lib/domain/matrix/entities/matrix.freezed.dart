// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'matrix.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MatrixTearOff {
  const _$MatrixTearOff();

  _Matrix call(
      {required UniqueId id,
      required String stageId,
      required String itemId,
      required int quantity,
      required int times,
      DateTime? start,
      DateTime? end}) {
    return _Matrix(
      id: id,
      stageId: stageId,
      itemId: itemId,
      quantity: quantity,
      times: times,
      start: start,
      end: end,
    );
  }
}

/// @nodoc
const $Matrix = _$MatrixTearOff();

/// @nodoc
mixin _$Matrix {
  UniqueId get id => throw _privateConstructorUsedError;
  String get stageId => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  int get times => throw _privateConstructorUsedError;
  DateTime? get start => throw _privateConstructorUsedError;
  DateTime? get end => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MatrixCopyWith<Matrix> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatrixCopyWith<$Res> {
  factory $MatrixCopyWith(Matrix value, $Res Function(Matrix) then) =
      _$MatrixCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      String stageId,
      String itemId,
      int quantity,
      int times,
      DateTime? start,
      DateTime? end});
}

/// @nodoc
class _$MatrixCopyWithImpl<$Res> implements $MatrixCopyWith<$Res> {
  _$MatrixCopyWithImpl(this._value, this._then);

  final Matrix _value;
  // ignore: unused_field
  final $Res Function(Matrix) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? stageId = freezed,
    Object? itemId = freezed,
    Object? quantity = freezed,
    Object? times = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      stageId: stageId == freezed
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      times: times == freezed
          ? _value.times
          : times // ignore: cast_nullable_to_non_nullable
              as int,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$MatrixCopyWith<$Res> implements $MatrixCopyWith<$Res> {
  factory _$MatrixCopyWith(_Matrix value, $Res Function(_Matrix) then) =
      __$MatrixCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      String stageId,
      String itemId,
      int quantity,
      int times,
      DateTime? start,
      DateTime? end});
}

/// @nodoc
class __$MatrixCopyWithImpl<$Res> extends _$MatrixCopyWithImpl<$Res>
    implements _$MatrixCopyWith<$Res> {
  __$MatrixCopyWithImpl(_Matrix _value, $Res Function(_Matrix) _then)
      : super(_value, (v) => _then(v as _Matrix));

  @override
  _Matrix get _value => super._value as _Matrix;

  @override
  $Res call({
    Object? id = freezed,
    Object? stageId = freezed,
    Object? itemId = freezed,
    Object? quantity = freezed,
    Object? times = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_Matrix(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      stageId: stageId == freezed
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      times: times == freezed
          ? _value.times
          : times // ignore: cast_nullable_to_non_nullable
              as int,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
class _$_Matrix implements _Matrix {
  const _$_Matrix(
      {required this.id,
      required this.stageId,
      required this.itemId,
      required this.quantity,
      required this.times,
      this.start,
      this.end});

  @override
  final UniqueId id;
  @override
  final String stageId;
  @override
  final String itemId;
  @override
  final int quantity;
  @override
  final int times;
  @override
  final DateTime? start;
  @override
  final DateTime? end;

  @override
  String toString() {
    return 'Matrix(id: $id, stageId: $stageId, itemId: $itemId, quantity: $quantity, times: $times, start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Matrix &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.stageId, stageId) ||
                const DeepCollectionEquality()
                    .equals(other.stageId, stageId)) &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.times, times) ||
                const DeepCollectionEquality().equals(other.times, times)) &&
            (identical(other.start, start) ||
                const DeepCollectionEquality().equals(other.start, start)) &&
            (identical(other.end, end) ||
                const DeepCollectionEquality().equals(other.end, end)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(stageId) ^
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(times) ^
      const DeepCollectionEquality().hash(start) ^
      const DeepCollectionEquality().hash(end);

  @JsonKey(ignore: true)
  @override
  _$MatrixCopyWith<_Matrix> get copyWith =>
      __$MatrixCopyWithImpl<_Matrix>(this, _$identity);
}

abstract class _Matrix implements Matrix {
  const factory _Matrix(
      {required UniqueId id,
      required String stageId,
      required String itemId,
      required int quantity,
      required int times,
      DateTime? start,
      DateTime? end}) = _$_Matrix;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  String get stageId => throw _privateConstructorUsedError;
  @override
  String get itemId => throw _privateConstructorUsedError;
  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  int get times => throw _privateConstructorUsedError;
  @override
  DateTime? get start => throw _privateConstructorUsedError;
  @override
  DateTime? get end => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MatrixCopyWith<_Matrix> get copyWith => throw _privateConstructorUsedError;
}
