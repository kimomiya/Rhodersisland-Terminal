import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums/server.dart';
import '../../core/entity.dart';
import '../../core/unique_id.dart';

part 'item_existence.freezed.dart';

@freezed
abstract class ItemExistence with _$ItemExistence implements Entity {
  const factory ItemExistence({
    @required UniqueId id,
    DateTime closeTime,
    @required bool exist,
    DateTime openTime,
    @required Server server,
  }) = _ItemExistence;
}
