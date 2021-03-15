// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stage_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StageDto _$_$_StageDtoFromJson(Map<String, dynamic> json) {
  return _$_StageDto(
    json['stageId'] as String?,
    json['zoneId'] as String?,
    json['code'] as String?,
    json['stageType'] as String?,
    json['apCost'] as int?,
    (json['dropInfos'] as List<dynamic>?)
        ?.map((e) => DropInfoDto.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['existence'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, ExistenceDto.fromJson(e as Map<String, dynamic>)),
    ),
    json['minClearTime'] as int?,
    (json['code_i18n'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
  );
}

Map<String, dynamic> _$_$_StageDtoToJson(_$_StageDto instance) =>
    <String, dynamic>{
      'stageId': instance.stageId,
      'zoneId': instance.zoneId,
      'code': instance.code,
      'stageType': instance.stageType,
      'apCost': instance.apCost,
      'dropInfos': instance.dropInfos,
      'existence': instance.existence,
      'minClearTime': instance.minClearTime,
      'code_i18n': instance.codeI18n,
    };
