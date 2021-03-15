// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'stage_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StageDto _$StageDtoFromJson(Map<String, dynamic> json) {
  return _StageDto.fromJson(json);
}

/// @nodoc
class _$StageDtoTearOff {
  const _$StageDtoTearOff();

  _StageDto call(
      String? stageId,
      String? zoneId,
      String? code,
      String? stageType,
      int? apCost,
      List<DropInfoDto>? dropInfos,
      Map<String, ExistenceDto>? existence,
      int? minClearTime,
      @JsonKey(name: 'code_i18n') Map<String, String>? codeI18n) {
    return _StageDto(
      stageId,
      zoneId,
      code,
      stageType,
      apCost,
      dropInfos,
      existence,
      minClearTime,
      codeI18n,
    );
  }

  StageDto fromJson(Map<String, Object> json) {
    return StageDto.fromJson(json);
  }
}

/// @nodoc
const $StageDto = _$StageDtoTearOff();

/// @nodoc
mixin _$StageDto {
  String? get stageId => throw _privateConstructorUsedError;
  String? get zoneId => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get stageType => throw _privateConstructorUsedError;
  int? get apCost => throw _privateConstructorUsedError;
  List<DropInfoDto>? get dropInfos => throw _privateConstructorUsedError;
  Map<String, ExistenceDto>? get existence =>
      throw _privateConstructorUsedError;
  int? get minClearTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'code_i18n')
  Map<String, String>? get codeI18n => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StageDtoCopyWith<StageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StageDtoCopyWith<$Res> {
  factory $StageDtoCopyWith(StageDto value, $Res Function(StageDto) then) =
      _$StageDtoCopyWithImpl<$Res>;
  $Res call(
      {String? stageId,
      String? zoneId,
      String? code,
      String? stageType,
      int? apCost,
      List<DropInfoDto>? dropInfos,
      Map<String, ExistenceDto>? existence,
      int? minClearTime,
      @JsonKey(name: 'code_i18n') Map<String, String>? codeI18n});
}

/// @nodoc
class _$StageDtoCopyWithImpl<$Res> implements $StageDtoCopyWith<$Res> {
  _$StageDtoCopyWithImpl(this._value, this._then);

  final StageDto _value;
  // ignore: unused_field
  final $Res Function(StageDto) _then;

  @override
  $Res call({
    Object? stageId = freezed,
    Object? zoneId = freezed,
    Object? code = freezed,
    Object? stageType = freezed,
    Object? apCost = freezed,
    Object? dropInfos = freezed,
    Object? existence = freezed,
    Object? minClearTime = freezed,
    Object? codeI18n = freezed,
  }) {
    return _then(_value.copyWith(
      stageId: stageId == freezed
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as String?,
      zoneId: zoneId == freezed
          ? _value.zoneId
          : zoneId // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      stageType: stageType == freezed
          ? _value.stageType
          : stageType // ignore: cast_nullable_to_non_nullable
              as String?,
      apCost: apCost == freezed
          ? _value.apCost
          : apCost // ignore: cast_nullable_to_non_nullable
              as int?,
      dropInfos: dropInfos == freezed
          ? _value.dropInfos
          : dropInfos // ignore: cast_nullable_to_non_nullable
              as List<DropInfoDto>?,
      existence: existence == freezed
          ? _value.existence
          : existence // ignore: cast_nullable_to_non_nullable
              as Map<String, ExistenceDto>?,
      minClearTime: minClearTime == freezed
          ? _value.minClearTime
          : minClearTime // ignore: cast_nullable_to_non_nullable
              as int?,
      codeI18n: codeI18n == freezed
          ? _value.codeI18n
          : codeI18n // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
abstract class _$StageDtoCopyWith<$Res> implements $StageDtoCopyWith<$Res> {
  factory _$StageDtoCopyWith(_StageDto value, $Res Function(_StageDto) then) =
      __$StageDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? stageId,
      String? zoneId,
      String? code,
      String? stageType,
      int? apCost,
      List<DropInfoDto>? dropInfos,
      Map<String, ExistenceDto>? existence,
      int? minClearTime,
      @JsonKey(name: 'code_i18n') Map<String, String>? codeI18n});
}

/// @nodoc
class __$StageDtoCopyWithImpl<$Res> extends _$StageDtoCopyWithImpl<$Res>
    implements _$StageDtoCopyWith<$Res> {
  __$StageDtoCopyWithImpl(_StageDto _value, $Res Function(_StageDto) _then)
      : super(_value, (v) => _then(v as _StageDto));

  @override
  _StageDto get _value => super._value as _StageDto;

  @override
  $Res call({
    Object? stageId = freezed,
    Object? zoneId = freezed,
    Object? code = freezed,
    Object? stageType = freezed,
    Object? apCost = freezed,
    Object? dropInfos = freezed,
    Object? existence = freezed,
    Object? minClearTime = freezed,
    Object? codeI18n = freezed,
  }) {
    return _then(_StageDto(
      stageId == freezed
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as String?,
      zoneId == freezed
          ? _value.zoneId
          : zoneId // ignore: cast_nullable_to_non_nullable
              as String?,
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      stageType == freezed
          ? _value.stageType
          : stageType // ignore: cast_nullable_to_non_nullable
              as String?,
      apCost == freezed
          ? _value.apCost
          : apCost // ignore: cast_nullable_to_non_nullable
              as int?,
      dropInfos == freezed
          ? _value.dropInfos
          : dropInfos // ignore: cast_nullable_to_non_nullable
              as List<DropInfoDto>?,
      existence == freezed
          ? _value.existence
          : existence // ignore: cast_nullable_to_non_nullable
              as Map<String, ExistenceDto>?,
      minClearTime == freezed
          ? _value.minClearTime
          : minClearTime // ignore: cast_nullable_to_non_nullable
              as int?,
      codeI18n == freezed
          ? _value.codeI18n
          : codeI18n // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_StageDto implements _StageDto {
  const _$_StageDto(
      this.stageId,
      this.zoneId,
      this.code,
      this.stageType,
      this.apCost,
      this.dropInfos,
      this.existence,
      this.minClearTime,
      @JsonKey(name: 'code_i18n') this.codeI18n);

  factory _$_StageDto.fromJson(Map<String, dynamic> json) =>
      _$_$_StageDtoFromJson(json);

  @override
  final String? stageId;
  @override
  final String? zoneId;
  @override
  final String? code;
  @override
  final String? stageType;
  @override
  final int? apCost;
  @override
  final List<DropInfoDto>? dropInfos;
  @override
  final Map<String, ExistenceDto>? existence;
  @override
  final int? minClearTime;
  @override
  @JsonKey(name: 'code_i18n')
  final Map<String, String>? codeI18n;

  @override
  String toString() {
    return 'StageDto(stageId: $stageId, zoneId: $zoneId, code: $code, stageType: $stageType, apCost: $apCost, dropInfos: $dropInfos, existence: $existence, minClearTime: $minClearTime, codeI18n: $codeI18n)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StageDto &&
            (identical(other.stageId, stageId) ||
                const DeepCollectionEquality()
                    .equals(other.stageId, stageId)) &&
            (identical(other.zoneId, zoneId) ||
                const DeepCollectionEquality().equals(other.zoneId, zoneId)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.stageType, stageType) ||
                const DeepCollectionEquality()
                    .equals(other.stageType, stageType)) &&
            (identical(other.apCost, apCost) ||
                const DeepCollectionEquality().equals(other.apCost, apCost)) &&
            (identical(other.dropInfos, dropInfos) ||
                const DeepCollectionEquality()
                    .equals(other.dropInfos, dropInfos)) &&
            (identical(other.existence, existence) ||
                const DeepCollectionEquality()
                    .equals(other.existence, existence)) &&
            (identical(other.minClearTime, minClearTime) ||
                const DeepCollectionEquality()
                    .equals(other.minClearTime, minClearTime)) &&
            (identical(other.codeI18n, codeI18n) ||
                const DeepCollectionEquality()
                    .equals(other.codeI18n, codeI18n)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(stageId) ^
      const DeepCollectionEquality().hash(zoneId) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(stageType) ^
      const DeepCollectionEquality().hash(apCost) ^
      const DeepCollectionEquality().hash(dropInfos) ^
      const DeepCollectionEquality().hash(existence) ^
      const DeepCollectionEquality().hash(minClearTime) ^
      const DeepCollectionEquality().hash(codeI18n);

  @JsonKey(ignore: true)
  @override
  _$StageDtoCopyWith<_StageDto> get copyWith =>
      __$StageDtoCopyWithImpl<_StageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StageDtoToJson(this);
  }
}

abstract class _StageDto implements StageDto {
  const factory _StageDto(
      String? stageId,
      String? zoneId,
      String? code,
      String? stageType,
      int? apCost,
      List<DropInfoDto>? dropInfos,
      Map<String, ExistenceDto>? existence,
      int? minClearTime,
      @JsonKey(name: 'code_i18n') Map<String, String>? codeI18n) = _$_StageDto;

  factory _StageDto.fromJson(Map<String, dynamic> json) = _$_StageDto.fromJson;

  @override
  String? get stageId => throw _privateConstructorUsedError;
  @override
  String? get zoneId => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String? get stageType => throw _privateConstructorUsedError;
  @override
  int? get apCost => throw _privateConstructorUsedError;
  @override
  List<DropInfoDto>? get dropInfos => throw _privateConstructorUsedError;
  @override
  Map<String, ExistenceDto>? get existence =>
      throw _privateConstructorUsedError;
  @override
  int? get minClearTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'code_i18n')
  Map<String, String>? get codeI18n => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StageDtoCopyWith<_StageDto> get copyWith =>
      throw _privateConstructorUsedError;
}
