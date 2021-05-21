import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/alias/type_alias.dart';
import 'drop_info_model.dart';
import 'existence_model.dart';

part 'stage_model.freezed.dart';
part 'stage_model.g.dart';

@freezed
class StageModel with _$StageModel {
  const factory StageModel({
    @JsonKey(name: 'stageType') @Default('') String type,
    @JsonKey(name: 'stageId') @Default('') String id,
    @Default('') String zoneId,
    @Default('') String code,
    int? apCost,
    List<DropInfoModel>? dropInfos,
    ExistenceModel? existence,
    int? minClearTime,
    @Default(<String, String>{}) Map<String, String> codeI18n,
  }) = _StageModel;

  factory StageModel.fromJson(Json json) => _$StageModelFromJson(json);
}
