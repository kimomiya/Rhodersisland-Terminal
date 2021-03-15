import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../../core/enums/i18n.dart';
import '../../../core/enums/item_type.dart';
import '../../../core/enums/server.dart';
import '../../../domain/core/entities/existence.dart';
import '../../../domain/core/unique_id.dart';
import '../../../domain/item/entities/item.dart';
import '../../../domain/item/entities/item_sprite_coord.dart';
import '../../core/dtos/existence_dto.dart';

part 'item_dto.freezed.dart';
part 'item_dto.g.dart';

@freezed
class ItemDto with _$ItemDto {
  const factory ItemDto(
    int? addTimePoint,
    Map<String, List<String>>? alias,
    Map<String, ExistenceDto>? existence,
    String? groupId,
    String? itemId,
    String? itemType,
    String? name,
    @JsonKey(name: 'name_i18n') Map<String, String>? nameI18n,
    Map<String, List<String>>? pron,
    int? rarity,
    int? sortId,
    List<int>? spriteCoord,
  ) = _ItemDto;

  factory ItemDto.fromJson(Map<String, dynamic> json) =>
      _$ItemDtoFromJson(json);

  factory ItemDto.fromQueryResult(Map<String, dynamic> result) {
    final json = Map<String, dynamic>.from(result);

    final alias = json['alias'] as String;
    json['alias'] = jsonDecode(alias) as Map<String, dynamic>;

    final existence = json['existence'] as String;
    json['existence'] = jsonDecode(existence) as Map<String, dynamic>;

    final nameI18n = json['name_i18n'] as String;
    json['name_i18n'] = jsonDecode(nameI18n) as Map<String, dynamic>;

    final pron = json['pron'] as String;
    json['pron'] = jsonDecode(pron) as Map<String, dynamic>;

    final spriteCoord = json['spriteCoord'] as String;
    json['spriteCoord'] = jsonDecode(spriteCoord) as List;

    return ItemDto.fromJson(json);
  }

  static const tableName = 'item';
}

extension ItemDtoToDomain on ItemDto {
  Item toDomain() {
    return Item(
      id: UniqueId.fromUniqueString(itemId ?? ''),
      addTimePoint: addTimePoint,
      alias: alias?.toImmutableMap() ?? const KtMap.empty(),
      existence: _transferExistence(),
      groupId: groupId ?? '',
      type: ItemTypeValue.of(itemType),
      name: name ?? '',
      nameI18n: _transferNameI18n(),
      pron: _transferPron(),
      rarity: rarity,
      sortId: sortId,
      spriteCoord: _transferSpriteCoord(),
    );
  }

  KtMap<Server, Existence> _transferExistence() {
    final map = <Server, Existence>{};
    existence?.forEach(
      (key, value) => map[ServerValue.of(key)] = value.toDomain(),
    );
    return map.toImmutableMap();
  }

  KtMap<I18n, String> _transferNameI18n() {
    final map = <I18n, String>{};
    nameI18n?.forEach((key, value) => map[I18nValue.of(key)] = value);
    return map.toImmutableMap();
  }

  KtMap<I18n, List<String>> _transferPron() {
    final map = <I18n, List<String>>{};
    pron?.forEach((key, value) => map[I18nValue.of(key)] = value);
    return map.toImmutableMap();
  }

  ItemSpriteCoord? _transferSpriteCoord() {
    final spriteCoord = this.spriteCoord ?? [];
    if (spriteCoord.length < 2) {
      return null;
    }

    return ItemSpriteCoord(
      id: UniqueId(),
      x: spriteCoord[0],
      y: spriteCoord[1],
    );
  }
}
