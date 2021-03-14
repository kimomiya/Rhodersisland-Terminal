import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/entity.dart';
import '../../core/unique_id.dart';

part 'matrix.freezed.dart';

@freezed
class Matrix with _$Matrix implements Entity {
  const factory Matrix({
    required UniqueId id,
    required String stageId,
    required String itemId,
    required int quantity,
    required int times,
    DateTime? start,
    DateTime? end,
  }) = _Matrix;
}
