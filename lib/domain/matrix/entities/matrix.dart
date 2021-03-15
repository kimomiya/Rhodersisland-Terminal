import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:rhodes_island_terminal/domain/matrix/value_objects/index.dart';

import '../../../core/enums/i18n.dart';
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
    required KtMap<I18n, String> stageCodeI18n,
    required int stageApCost,
    DateTime? stageMinClearTime,
  }) = _Matrix;
}

extension MatrixValues on Matrix {
  DropRate get dropRate => DropRate(quantity, times);

  ExpectedSanity get expectedSanity =>
      ExpectedSanity(quantity, times, stageApCost);
}
