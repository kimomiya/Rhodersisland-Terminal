import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums/drop_type.dart';
import '../entity.dart';
import '../unique_id.dart';
import 'bounds.dart';

part 'drop_info.freezed.dart';

@freezed
class DropInfo with _$DropInfo implements Entity {
  const factory DropInfo({
    required UniqueId id,
    required String itemId,
    required DropType type,
    Bounds? bounds,
  }) = _DropInfo;
}
