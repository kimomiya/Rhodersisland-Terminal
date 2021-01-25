import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/core/unique_id.dart';
import '../../../domain/item/entities/item.dart';
import '../../../domain/item/entities/item_sprite_coord.dart';
import 'item_existence_dto.dart';

part 'item_dto.freezed.dart';
part 'item_dto.g.dart';

@freezed
abstract class ItemDto with _$ItemDto {
  const factory ItemDto({
    @JsonKey(nullable: true) int addTimePoint,
    @JsonKey(defaultValue: <dynamic>{}) Map<String, List<String>> alias,
    @JsonKey(fromJson: _existenceFromJson, defaultValue: <ItemExistenceDto>[])
        List<ItemExistenceDto> existence,
    @JsonKey(defaultValue: '') String groupId,
    @JsonKey(required: true) String itemId,
    @JsonKey(defaultValue: '') String itemType,
    @JsonKey(defaultValue: '') String name,
    @JsonKey(name: 'name_i18n', defaultValue: <dynamic>{})
        Map<String, String> nameI18n,
    @JsonKey(defaultValue: <dynamic>{}) Map<String, List<String>> pron,
    @JsonKey(nullable: true) int rarity,
    @JsonKey(nullable: true) int sortId,
    @JsonKey(defaultValue: <int>[]) List<int> spriteCoord,
  }) = _ItemDto;

  factory ItemDto.fromJson(Map<String, dynamic> json) =>
      _$ItemDtoFromJson(json);
}

extension ItemDtoToDomain on ItemDto {
  Item toDomain() {
    return Item(
      id: UniqueId.fromUniqueString(itemId),
      addTimePoint: addTimePoint,
      alias: alias.toImmutableMap(),
      existence: existence.map((dto) => dto.toDomain()).toImmutableList(),
      groupId: groupId,
      itemType: itemType,
      name: name,
      nameI18n: nameI18n.toImmutableMap(),
      pron: pron.toImmutableMap(),
      rarity: rarity,
      sortId: sortId,
      spriteCoord: _transferSpriteCoord(),
    );
  }

  ItemSpriteCoord _transferSpriteCoord() {
    if (spriteCoord.isEmpty) {
      return null;
    }

    return ItemSpriteCoord(
      id: UniqueId(),
      x: spriteCoord[0],
      y: spriteCoord[1],
    );
  }
}

//* Transfer Methods

List<ItemExistenceDto> _existenceFromJson(Map<String, dynamic> json) {
  if (json == null) {
    return [];
  }

  final existence = <ItemExistenceDto>[];
  json.forEach((key, dynamic value) {
    final data = value as Map<String, dynamic>;
    data['server'] = key;
    existence.add(ItemExistenceDto.fromJson(data));
  });
  return existence;
}
