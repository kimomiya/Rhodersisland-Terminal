// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zone_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZoneModel _$_$_ZoneModelFromJson(Map<String, dynamic> json) {
  return _$_ZoneModel(
    id: json['zoneId'] as String,
    index: json['zoneIndex'] as int?,
    type: json['type'] as String,
    subType: json['subType'] as String,
    name: json['zoneName'] as String,
    existence: json['existence'] == null
        ? null
        : ExistenceModel.fromJson(json['existence'] as Map<String, dynamic>),
    stages:
        (json['stages'] as List<dynamic>?)?.map((e) => e as String).toList() ??
            [],
    background: json['background'] as String? ?? '',
    nameI18n: Map<String, String>.from(json['zoneName_i18n'] as Map),
  );
}

Map<String, dynamic> _$_$_ZoneModelToJson(_$_ZoneModel instance) =>
    <String, dynamic>{
      'zoneId': instance.id,
      'zoneIndex': instance.index,
      'type': instance.type,
      'subType': instance.subType,
      'zoneName': instance.name,
      'existence': instance.existence,
      'stages': instance.stages,
      'background': instance.background,
      'zoneName_i18n': instance.nameI18n,
    };
