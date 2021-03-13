// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'matrix_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MatrixDto _$MatrixDtoFromJson(Map<String, dynamic> json) {
  return _MatrixDto.fromJson(json);
}

/// @nodoc
class _$MatrixDtoTearOff {
  const _$MatrixDtoTearOff();

  _MatrixDto call(String? stageId, String? itemId, int? quantity, int? times,
      int? start, int? end) {
    return _MatrixDto(
      stageId,
      itemId,
      quantity,
      times,
      start,
      end,
    );
  }

  MatrixDto fromJson(Map<String, Object> json) {
    return MatrixDto.fromJson(json);
  }
}

/// @nodoc
const $MatrixDto = _$MatrixDtoTearOff();

/// @nodoc
mixin _$MatrixDto {
  String? get stageId => throw _privateConstructorUsedError;
  String? get itemId => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  int? get times => throw _privateConstructorUsedError;
  int? get start => throw _privateConstructorUsedError;
  int? get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatrixDtoCopyWith<MatrixDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatrixDtoCopyWith<$Res> {
  factory $MatrixDtoCopyWith(MatrixDto value, $Res Function(MatrixDto) then) =
      _$MatrixDtoCopyWithImpl<$Res>;
  $Res call(
      {String? stageId,
      String? itemId,
      int? quantity,
      int? times,
      int? start,
      int? end});
}

/// @nodoc
class _$MatrixDtoCopyWithImpl<$Res> implements $MatrixDtoCopyWith<$Res> {
  _$MatrixDtoCopyWithImpl(this._value, this._then);

  final MatrixDto _value;
  // ignore: unused_field
  final $Res Function(MatrixDto) _then;

  @override
  $Res call({
    Object? stageId = freezed,
    Object? itemId = freezed,
    Object? quantity = freezed,
    Object? times = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      stageId: stageId == freezed
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as String?,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$MatrixDtoCopyWith<$Res> implements $MatrixDtoCopyWith<$Res> {
  factory _$MatrixDtoCopyWith(
          _MatrixDto value, $Res Function(_MatrixDto) then) =
      __$MatrixDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? stageId,
      String? itemId,
      int? quantity,
      int? times,
      int? start,
      int? end});
}

/// @nodoc
class __$MatrixDtoCopyWithImpl<$Res> extends _$MatrixDtoCopyWithImpl<$Res>
    implements _$MatrixDtoCopyWith<$Res> {
  __$MatrixDtoCopyWithImpl(_MatrixDto _value, $Res Function(_MatrixDto) _then)
      : super(_value, (v) => _then(v as _MatrixDto));

  @override
  _MatrixDto get _value => super._value as _MatrixDto;

  @override
  $Res call({
    Object? stageId = freezed,
    Object? itemId = freezed,
    Object? quantity = freezed,
    Object? times = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_MatrixDto(
      stageId == freezed
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as String?,
      itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      times == freezed
          ? _value.times
          : times // ignore: cast_nullable_to_non_nullable
              as int?,
      start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int?,
      end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MatrixDto implements _MatrixDto {
  const _$_MatrixDto(this.stageId, this.itemId, this.quantity, this.times,
      this.start, this.end);

  factory _$_MatrixDto.fromJson(Map<String, dynamic> json) =>
      _$_$_MatrixDtoFromJson(json);

  @override
  final String? stageId;
  @override
  final String? itemId;
  @override
  final int? quantity;
  @override
  final int? times;
  @override
  final int? start;
  @override
  final int? end;

  @override
  String toString() {
    return 'MatrixDto(stageId: $stageId, itemId: $itemId, quantity: $quantity, times: $times, start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MatrixDto &&
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
      const DeepCollectionEquality().hash(stageId) ^
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(times) ^
      const DeepCollectionEquality().hash(start) ^
      const DeepCollectionEquality().hash(end);

  @JsonKey(ignore: true)
  @override
  _$MatrixDtoCopyWith<_MatrixDto> get copyWith =>
      __$MatrixDtoCopyWithImpl<_MatrixDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MatrixDtoToJson(this);
  }
}

abstract class _MatrixDto implements MatrixDto {
  const factory _MatrixDto(String? stageId, String? itemId, int? quantity,
      int? times, int? start, int? end) = _$_MatrixDto;

  factory _MatrixDto.fromJson(Map<String, dynamic> json) =
      _$_MatrixDto.fromJson;

  @override
  String? get stageId => throw _privateConstructorUsedError;
  @override
  String? get itemId => throw _privateConstructorUsedError;
  @override
  int? get quantity => throw _privateConstructorUsedError;
  @override
  int? get times => throw _privateConstructorUsedError;
  @override
  int? get start => throw _privateConstructorUsedError;
  @override
  int? get end => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MatrixDtoCopyWith<_MatrixDto> get copyWith =>
      throw _privateConstructorUsedError;
}
