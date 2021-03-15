import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../../core/enums/i18n.dart';
import '../../../core/enums/server.dart';
import '../../../domain/core/entities/drop_info.dart';
import '../../../domain/core/entities/existence.dart';
import '../../../domain/core/unique_id.dart';
import '../../../domain/stage/entities/stage.dart';
import '../../../shared/extensions/int_to_datetime.dart';
import '../../core/dtos/drop_info_dto.dart';
import '../../core/dtos/existence_dto.dart';

part 'stage_dto.freezed.dart';
part 'stage_dto.g.dart';

@freezed
class StageDto with _$StageDto {
  const factory StageDto(
    String? stageId,
    String? zoneId,
    String? code,
    String? stageType,
    int? apCost,
    List<DropInfoDto>? dropInfos,
    Map<String, ExistenceDto>? existence,
    int? minClearTime,
    @JsonKey(name: 'code_i18n') Map<String, String>? codeI18n,
  ) = _StageDto;

  factory StageDto.fromJson(Map<String, dynamic> json) =>
      _$StageDtoFromJson(json);

  factory StageDto.fromQueryResult(Map<String, dynamic> result) {
    final json = Map<String, dynamic>.from(result);

    final existence = json['existence'] as String;
    json['existence'] = jsonDecode(existence) as Map<String, dynamic>;

    final codeI18n = json['code_i18n'] as String;
    json['name_i18n'] = jsonDecode(codeI18n) as Map<String, dynamic>;

    return StageDto.fromJson(json);
  }

  static const tableName = 'stage';
}

extension StageDtoToDomain on StageDto {
  Stage toDomain() {
    return Stage(
      id: UniqueId(),
      zoneId: zoneId ?? '',
      code: code ?? '',
      type: stageType ?? '',
      apCost: apCost ?? -1,
      dropInfos: _transferDropInfos(),
      existence: _transferExistence(),
      minClearTime: minClearTime?.toDateTime(),
      codeI18n: _transferCodeI18n(),
    );
  }

  KtList<DropInfo> _transferDropInfos() {
    return dropInfos?.map((info) => info.toDomain()).toImmutableList() ??
        const KtList.empty();
  }

  KtMap<Server, Existence> _transferExistence() {
    final map = <Server, Existence>{};
    existence?.forEach(
      (key, value) => map[ServerValue.of(key)] = value.toDomain(),
    );
    return map.toImmutableMap();
  }

  KtMap<I18n, String> _transferCodeI18n() {
    final map = <I18n, String>{};
    codeI18n?.forEach((key, value) => map[I18nValue.of(key)] = value);
    return map.toImmutableMap();
  }
}
