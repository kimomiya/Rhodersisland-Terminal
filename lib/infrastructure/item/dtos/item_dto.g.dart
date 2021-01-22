// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemDto _$_$_ItemDtoFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['itemId']);
  return _$_ItemDto(
    addTimePoint: json['addTimePoint'] as int,
    alias: (json['alias'] as Map<String, dynamic>)?.map(
          (k, e) => MapEntry(k, (e as List)?.map((e) => e as String)?.toList()),
        ) ??
        {},
    existence:
        _existenceFromJson(json['existence'] as Map<String, dynamic>) ?? [],
    groupId: json['groupId'] as String ?? '',
    itemId: json['itemId'] as String,
    itemType: json['itemType'] as String ?? '',
    name: json['name'] as String ?? '',
    nameI18n: (json['name_i18n'] as Map<String, dynamic>)?.map(
          (k, e) => MapEntry(k, e as String),
        ) ??
        {},
    pron: (json['pron'] as Map<String, dynamic>)?.map(
          (k, e) => MapEntry(k, (e as List)?.map((e) => e as String)?.toList()),
        ) ??
        {},
    rarity: json['rarity'] as int,
    sortId: json['sortId'] as int,
    spriteCoord:
        (json['spriteCoord'] as List)?.map((e) => e as int)?.toList() ?? [],
  );
}

Map<String, dynamic> _$_$_ItemDtoToJson(_$_ItemDto instance) =>
    <String, dynamic>{
      'addTimePoint': instance.addTimePoint,
      'alias': instance.alias,
      'existence': instance.existence,
      'groupId': instance.groupId,
      'itemId': instance.itemId,
      'itemType': instance.itemType,
      'name': instance.name,
      'name_i18n': instance.nameI18n,
      'pron': instance.pron,
      'rarity': instance.rarity,
      'sortId': instance.sortId,
      'spriteCoord': instance.spriteCoord,
    };
