// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'stage_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StageModel _$StageModelFromJson(Map<String, dynamic> json) {
  return _StageModel.fromJson(json);
}

/// @nodoc
class _$StageModelTearOff {
  const _$StageModelTearOff();

  _StageModel call(
      {@JsonKey(name: 'stageType') String type = '',
      @JsonKey(name: 'stageId') String id = '',
      String zoneId = '',
      String code = '',
      int? apCost,
      List<DropInfoModel> dropInfos = const <DropInfoModel>[],
      Map<String, ExistenceModel> existence = const <String, ExistenceModel>{},
      int? minClearTime,
      Map<String, String> codeI18n = const <String, String>{}}) {
    return _StageModel(
      type: type,
      id: id,
      zoneId: zoneId,
      code: code,
      apCost: apCost,
      dropInfos: dropInfos,
      existence: existence,
      minClearTime: minClearTime,
      codeI18n: codeI18n,
    );
  }

  StageModel fromJson(Map<String, Object> json) {
    return StageModel.fromJson(json);
  }
}

/// @nodoc
const $StageModel = _$StageModelTearOff();

/// @nodoc
mixin _$StageModel {
  @JsonKey(name: 'stageType')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'stageId')
  String get id => throw _privateConstructorUsedError;
  String get zoneId => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  int? get apCost => throw _privateConstructorUsedError;
  List<DropInfoModel> get dropInfos => throw _privateConstructorUsedError;
  Map<String, ExistenceModel> get existence =>
      throw _privateConstructorUsedError;
  int? get minClearTime => throw _privateConstructorUsedError;
  Map<String, String> get codeI18n => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StageModelCopyWith<StageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StageModelCopyWith<$Res> {
  factory $StageModelCopyWith(
          StageModel value, $Res Function(StageModel) then) =
      _$StageModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'stageType') String type,
      @JsonKey(name: 'stageId') String id,
      String zoneId,
      String code,
      int? apCost,
      List<DropInfoModel> dropInfos,
      Map<String, ExistenceModel> existence,
      int? minClearTime,
      Map<String, String> codeI18n});
}

/// @nodoc
class _$StageModelCopyWithImpl<$Res> implements $StageModelCopyWith<$Res> {
  _$StageModelCopyWithImpl(this._value, this._then);

  final StageModel _value;
  // ignore: unused_field
  final $Res Function(StageModel) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
    Object? zoneId = freezed,
    Object? code = freezed,
    Object? apCost = freezed,
    Object? dropInfos = freezed,
    Object? existence = freezed,
    Object? minClearTime = freezed,
    Object? codeI18n = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      zoneId: zoneId == freezed
          ? _value.zoneId
          : zoneId // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      apCost: apCost == freezed
          ? _value.apCost
          : apCost // ignore: cast_nullable_to_non_nullable
              as int?,
      dropInfos: dropInfos == freezed
          ? _value.dropInfos
          : dropInfos // ignore: cast_nullable_to_non_nullable
              as List<DropInfoModel>,
      existence: existence == freezed
          ? _value.existence
          : existence // ignore: cast_nullable_to_non_nullable
              as Map<String, ExistenceModel>,
      minClearTime: minClearTime == freezed
          ? _value.minClearTime
          : minClearTime // ignore: cast_nullable_to_non_nullable
              as int?,
      codeI18n: codeI18n == freezed
          ? _value.codeI18n
          : codeI18n // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
abstract class _$StageModelCopyWith<$Res> implements $StageModelCopyWith<$Res> {
  factory _$StageModelCopyWith(
          _StageModel value, $Res Function(_StageModel) then) =
      __$StageModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'stageType') String type,
      @JsonKey(name: 'stageId') String id,
      String zoneId,
      String code,
      int? apCost,
      List<DropInfoModel> dropInfos,
      Map<String, ExistenceModel> existence,
      int? minClearTime,
      Map<String, String> codeI18n});
}

/// @nodoc
class __$StageModelCopyWithImpl<$Res> extends _$StageModelCopyWithImpl<$Res>
    implements _$StageModelCopyWith<$Res> {
  __$StageModelCopyWithImpl(
      _StageModel _value, $Res Function(_StageModel) _then)
      : super(_value, (v) => _then(v as _StageModel));

  @override
  _StageModel get _value => super._value as _StageModel;

  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
    Object? zoneId = freezed,
    Object? code = freezed,
    Object? apCost = freezed,
    Object? dropInfos = freezed,
    Object? existence = freezed,
    Object? minClearTime = freezed,
    Object? codeI18n = freezed,
  }) {
    return _then(_StageModel(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      zoneId: zoneId == freezed
          ? _value.zoneId
          : zoneId // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      apCost: apCost == freezed
          ? _value.apCost
          : apCost // ignore: cast_nullable_to_non_nullable
              as int?,
      dropInfos: dropInfos == freezed
          ? _value.dropInfos
          : dropInfos // ignore: cast_nullable_to_non_nullable
              as List<DropInfoModel>,
      existence: existence == freezed
          ? _value.existence
          : existence // ignore: cast_nullable_to_non_nullable
              as Map<String, ExistenceModel>,
      minClearTime: minClearTime == freezed
          ? _value.minClearTime
          : minClearTime // ignore: cast_nullable_to_non_nullable
              as int?,
      codeI18n: codeI18n == freezed
          ? _value.codeI18n
          : codeI18n // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StageModel implements _StageModel {
  const _$_StageModel(
      {@JsonKey(name: 'stageType') this.type = '',
      @JsonKey(name: 'stageId') this.id = '',
      this.zoneId = '',
      this.code = '',
      this.apCost,
      this.dropInfos = const <DropInfoModel>[],
      this.existence = const <String, ExistenceModel>{},
      this.minClearTime,
      this.codeI18n = const <String, String>{}});

  factory _$_StageModel.fromJson(Map<String, dynamic> json) =>
      _$_$_StageModelFromJson(json);

  @override
  @JsonKey(name: 'stageType')
  final String type;
  @override
  @JsonKey(name: 'stageId')
  final String id;
  @JsonKey(defaultValue: '')
  @override
  final String zoneId;
  @JsonKey(defaultValue: '')
  @override
  final String code;
  @override
  final int? apCost;
  @JsonKey(defaultValue: const <DropInfoModel>[])
  @override
  final List<DropInfoModel> dropInfos;
  @JsonKey(defaultValue: const <String, ExistenceModel>{})
  @override
  final Map<String, ExistenceModel> existence;
  @override
  final int? minClearTime;
  @JsonKey(defaultValue: const <String, String>{})
  @override
  final Map<String, String> codeI18n;

  @override
  String toString() {
    return 'StageModel(type: $type, id: $id, zoneId: $zoneId, code: $code, apCost: $apCost, dropInfos: $dropInfos, existence: $existence, minClearTime: $minClearTime, codeI18n: $codeI18n)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StageModel &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.zoneId, zoneId) ||
                const DeepCollectionEquality().equals(other.zoneId, zoneId)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
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
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(zoneId) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(apCost) ^
      const DeepCollectionEquality().hash(dropInfos) ^
      const DeepCollectionEquality().hash(existence) ^
      const DeepCollectionEquality().hash(minClearTime) ^
      const DeepCollectionEquality().hash(codeI18n);

  @JsonKey(ignore: true)
  @override
  _$StageModelCopyWith<_StageModel> get copyWith =>
      __$StageModelCopyWithImpl<_StageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StageModelToJson(this);
  }
}

abstract class _StageModel implements StageModel {
  const factory _StageModel(
      {@JsonKey(name: 'stageType') String type,
      @JsonKey(name: 'stageId') String id,
      String zoneId,
      String code,
      int? apCost,
      List<DropInfoModel> dropInfos,
      Map<String, ExistenceModel> existence,
      int? minClearTime,
      Map<String, String> codeI18n}) = _$_StageModel;

  factory _StageModel.fromJson(Map<String, dynamic> json) =
      _$_StageModel.fromJson;

  @override
  @JsonKey(name: 'stageType')
  String get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'stageId')
  String get id => throw _privateConstructorUsedError;
  @override
  String get zoneId => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  int? get apCost => throw _privateConstructorUsedError;
  @override
  List<DropInfoModel> get dropInfos => throw _privateConstructorUsedError;
  @override
  Map<String, ExistenceModel> get existence =>
      throw _privateConstructorUsedError;
  @override
  int? get minClearTime => throw _privateConstructorUsedError;
  @override
  Map<String, String> get codeI18n => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StageModelCopyWith<_StageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
