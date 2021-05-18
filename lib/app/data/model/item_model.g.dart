// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemModel _$_$_ItemModelFromJson(Map<String, dynamic> json) {
  return _$_ItemModel(
    addTimePoint: json['addTimePoint'] as int?,
    alias: (json['alias'] as Map<String, dynamic>?)?.map(
          (k, e) => MapEntry(
              k, (e as List<dynamic>).map((e) => e as String).toList()),
        ) ??
        {},
    existence: (json['existence'] as Map<String, dynamic>?)?.map(
          (k, e) =>
              MapEntry(k, ExistenceModel.fromJson(e as Map<String, dynamic>)),
        ) ??
        {},
    groupId: json['groupId'] as String? ?? '',
    id: json['itemId'] as String,
    type: json['itemType'] as String,
    name: json['name'] as String? ?? '',
    nameI18n: Map<String, String>.from(json['name_i18n'] as Map),
    pron: (json['pron'] as Map<String, dynamic>?)?.map(
          (k, e) => MapEntry(
              k, (e as List<dynamic>).map((e) => e as String).toList()),
        ) ??
        {},
    rarity: json['rarity'] as int?,
    sortId: json['sortId'] as int?,
    spriteCoord: (json['spriteCoord'] as List<dynamic>?)
            ?.map((e) => e as int)
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_ItemModelToJson(_$_ItemModel instance) =>
    <String, dynamic>{
      'addTimePoint': instance.addTimePoint,
      'alias': instance.alias,
      'existence': instance.existence,
      'groupId': instance.groupId,
      'itemId': instance.id,
      'itemType': instance.type,
      'name': instance.name,
      'name_i18n': instance.nameI18n,
      'pron': instance.pron,
      'rarity': instance.rarity,
      'sortId': instance.sortId,
      'spriteCoord': instance.spriteCoord,
    };
