// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stage_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StageModel _$_$_StageModelFromJson(Map<String, dynamic> json) {
  return _$_StageModel(
    type: json['stageType'] as String,
    id: json['stageId'] as String,
    zoneId: json['zoneId'] as String? ?? '',
    code: json['code'] as String? ?? '',
    apCost: json['apCost'] as int?,
    dropInfos: (json['dropInfos'] as List<dynamic>?)
            ?.map((e) => DropInfoModel.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    existence: (json['existence'] as Map<String, dynamic>?)?.map(
          (k, e) =>
              MapEntry(k, ExistenceModel.fromJson(e as Map<String, dynamic>)),
        ) ??
        {},
    minClearTime: json['minClearTime'] as int?,
    codeI18n: (json['codeI18n'] as Map<String, dynamic>?)?.map(
          (k, e) => MapEntry(k, e as String),
        ) ??
        {},
  );
}

Map<String, dynamic> _$_$_StageModelToJson(_$_StageModel instance) =>
    <String, dynamic>{
      'stageType': instance.type,
      'stageId': instance.id,
      'zoneId': instance.zoneId,
      'code': instance.code,
      'apCost': instance.apCost,
      'dropInfos': instance.dropInfos,
      'existence': instance.existence,
      'minClearTime': instance.minClearTime,
      'codeI18n': instance.codeI18n,
    };
