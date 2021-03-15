import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../../core/enums/i18n.dart';
import '../../../core/enums/server.dart';
import '../../core/entities/drop_info.dart';
import '../../core/entities/existence.dart';
import '../../core/entity.dart';
import '../../core/unique_id.dart';

part 'stage.freezed.dart';

@freezed
class Stage with _$Stage implements Entity {
  const factory Stage({
    required UniqueId id,
    required String zoneId,
    required String code,
    required String type,
    required int apCost,
    required KtList<DropInfo> dropInfos,
    required KtMap<Server, Existence> existence,
    DateTime? minClearTime,
    required KtMap<I18n, String> codeI18n,
  }) = _Stage;
}
