import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../../core/enums/item_type.dart';
import '../../../core/enums/server.dart';
import '../../core/entities/existence.dart';
import '../../core/entity.dart';
import '../../core/unique_id.dart';
import 'item_sprite_coord.dart';

part 'item.freezed.dart';

@freezed
class Item with _$Item implements Entity {
  const factory Item({
    required UniqueId id,
    int? addTimePoint,
    required KtMap<String, List<String>> alias,
    required KtMap<Server, Existence> existence,
    required String groupId,
    required ItemType type,
    required String name,
    required KtMap<String, String> nameI18n,
    required KtMap<String, List<String>> pron,
    int? rarity,
    int? sortId,
    ItemSpriteCoord? spriteCoord,
  }) = _Item;
}
