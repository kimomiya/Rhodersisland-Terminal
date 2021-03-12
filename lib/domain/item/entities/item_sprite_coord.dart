import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/entity.dart';
import '../../core/unique_id.dart';

part 'item_sprite_coord.freezed.dart';

@freezed
class ItemSpriteCoord with _$ItemSpriteCoord implements Entity {
  const factory ItemSpriteCoord({
    required UniqueId id,
    int? x,
    int? y,
  }) = _ItemSpriteCoord;
}
