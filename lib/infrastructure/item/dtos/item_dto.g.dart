// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemDto _$_$_ItemDtoFromJson(Map<String, dynamic> json) {
  return _$_ItemDto(
    json['addTimePoint'] as int?,
    (json['alias'] as Map<String, dynamic>?)?.map(
      (k, e) =>
          MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
    ),
    (json['existence'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, ExistenceDto.fromJson(e as Map<String, dynamic>)),
    ),
    json['groupId'] as String?,
    json['itemId'] as String?,
    json['itemType'] as String?,
    json['name'] as String?,
    (json['name_i18n'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
    (json['pron'] as Map<String, dynamic>?)?.map(
      (k, e) =>
          MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
    ),
    json['rarity'] as int?,
    json['sortId'] as int?,
    (json['spriteCoord'] as List<dynamic>?)?.map((e) => e as int).toList(),
  );
}

Map<String, dynamic> _$_$_ItemDtoToJson(_$_ItemDto instance) =>
    <String, dynamic>{
      'addTimePoint': instance.addTimePoint,
      'alias': instance.alias,
      'existence': instance.existence,
      'groupId': instance.groupId,
      'itemId': instance.itemId,
      'itemType': instance.type,
      'name': instance.name,
      'name_i18n': instance.nameI18n,
      'pron': instance.pron,
      'rarity': instance.rarity,
      'sortId': instance.sortId,
      'spriteCoord': instance.spriteCoord,
    };
