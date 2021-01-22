import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/core/unique_id.dart';
import '../../domain/item/entities/item.dart';
import 'existence_dto.dart';

part 'item_dto.freezed.dart';
part 'item_dto.g.dart';

@freezed
abstract class ItemDto with _$ItemDto {
  const factory ItemDto({
    @JsonKey(nullable: true) int addTimePoint,
    @JsonKey(defaultValue: <dynamic>{}) Map<String, List<String>> alias,
    @JsonKey(fromJson: _existenceFromJson, defaultValue: <ExistenceDto>[])
        List<ExistenceDto> existence,
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
      spriteCoord: spriteCoord.toImmutableList(),
    );
  }
}

//* Transfer Methods

List<ExistenceDto> _existenceFromJson(Map<String, dynamic> json) {
  if (json == null) {
    return [];
  }

  final existence = <ExistenceDto>[];
  json.forEach((key, dynamic value) {
    final data = value as Map<String, dynamic>;
    data['server'] = key;
    existence.add(ExistenceDto.fromJson(data));
  });
  return existence;
}
