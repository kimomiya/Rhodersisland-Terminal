// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'matrix_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MatrixModel _$MatrixModelFromJson(Map<String, dynamic> json) {
  return _MatrixModel.fromJson(json);
}

/// @nodoc
class _$MatrixModelTearOff {
  const _$MatrixModelTearOff();

  _MatrixModel call(
      {String stageId = '',
      String itemId = '',
      int? quantity,
      int? times,
      int? start}) {
    return _MatrixModel(
      stageId: stageId,
      itemId: itemId,
      quantity: quantity,
      times: times,
      start: start,
    );
  }

  MatrixModel fromJson(Map<String, Object> json) {
    return MatrixModel.fromJson(json);
  }
}

/// @nodoc
const $MatrixModel = _$MatrixModelTearOff();

/// @nodoc
mixin _$MatrixModel {
  String get stageId => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  int? get times => throw _privateConstructorUsedError;
  int? get start => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatrixModelCopyWith<MatrixModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatrixModelCopyWith<$Res> {
  factory $MatrixModelCopyWith(
          MatrixModel value, $Res Function(MatrixModel) then) =
      _$MatrixModelCopyWithImpl<$Res>;
  $Res call(
      {String stageId, String itemId, int? quantity, int? times, int? start});
}

/// @nodoc
class _$MatrixModelCopyWithImpl<$Res> implements $MatrixModelCopyWith<$Res> {
  _$MatrixModelCopyWithImpl(this._value, this._then);

  final MatrixModel _value;
  // ignore: unused_field
  final $Res Function(MatrixModel) _then;

  @override
  $Res call({
    Object? stageId = freezed,
    Object? itemId = freezed,
    Object? quantity = freezed,
    Object? times = freezed,
    Object? start = freezed,
  }) {
    return _then(_value.copyWith(
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
              as int?,
      times: times == freezed
          ? _value.times
          : times // ignore: cast_nullable_to_non_nullable
              as int?,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$MatrixModelCopyWith<$Res>
    implements $MatrixModelCopyWith<$Res> {
  factory _$MatrixModelCopyWith(
          _MatrixModel value, $Res Function(_MatrixModel) then) =
      __$MatrixModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String stageId, String itemId, int? quantity, int? times, int? start});
}

/// @nodoc
class __$MatrixModelCopyWithImpl<$Res> extends _$MatrixModelCopyWithImpl<$Res>
    implements _$MatrixModelCopyWith<$Res> {
  __$MatrixModelCopyWithImpl(
      _MatrixModel _value, $Res Function(_MatrixModel) _then)
      : super(_value, (v) => _then(v as _MatrixModel));

  @override
  _MatrixModel get _value => super._value as _MatrixModel;

  @override
  $Res call({
    Object? stageId = freezed,
    Object? itemId = freezed,
    Object? quantity = freezed,
    Object? times = freezed,
    Object? start = freezed,
  }) {
    return _then(_MatrixModel(
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
              as int?,
      times: times == freezed
          ? _value.times
          : times // ignore: cast_nullable_to_non_nullable
              as int?,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatrixModel implements _MatrixModel {
  const _$_MatrixModel(
      {this.stageId = '',
      this.itemId = '',
      this.quantity,
      this.times,
      this.start});

  factory _$_MatrixModel.fromJson(Map<String, dynamic> json) =>
      _$_$_MatrixModelFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String stageId;
  @JsonKey(defaultValue: '')
  @override
  final String itemId;
  @override
  final int? quantity;
  @override
  final int? times;
  @override
  final int? start;

  @override
  String toString() {
    return 'MatrixModel(stageId: $stageId, itemId: $itemId, quantity: $quantity, times: $times, start: $start)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MatrixModel &&
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
                const DeepCollectionEquality().equals(other.start, start)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(stageId) ^
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(times) ^
      const DeepCollectionEquality().hash(start);

  @JsonKey(ignore: true)
  @override
  _$MatrixModelCopyWith<_MatrixModel> get copyWith =>
      __$MatrixModelCopyWithImpl<_MatrixModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MatrixModelToJson(this);
  }
}

abstract class _MatrixModel implements MatrixModel {
  const factory _MatrixModel(
      {String stageId,
      String itemId,
      int? quantity,
      int? times,
      int? start}) = _$_MatrixModel;

  factory _MatrixModel.fromJson(Map<String, dynamic> json) =
      _$_MatrixModel.fromJson;

  @override
  String get stageId => throw _privateConstructorUsedError;
  @override
  String get itemId => throw _privateConstructorUsedError;
  @override
  int? get quantity => throw _privateConstructorUsedError;
  @override
  int? get times => throw _privateConstructorUsedError;
  @override
  int? get start => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MatrixModelCopyWith<_MatrixModel> get copyWith =>
      throw _privateConstructorUsedError;
}
