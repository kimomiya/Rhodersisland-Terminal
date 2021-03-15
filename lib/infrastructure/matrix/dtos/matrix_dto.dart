import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../../core/enums/i18n.dart';
import '../../../domain/core/unique_id.dart';
import '../../../domain/matrix/entities/matrix.dart';
import '../../../shared/extensions/int_to_datetime.dart';

part 'matrix_dto.freezed.dart';
part 'matrix_dto.g.dart';

@freezed
class MatrixDto with _$MatrixDto {
  const factory MatrixDto(
    String? stageId,
    String? itemId,
    int? quantity,
    int? times,
    int? start,
    int? end,
    @JsonKey(name: 'code_i18n') Map<String, String>? stageCodeI18n,
    @JsonKey(name: 'apCost') int? stageApCost,
    @JsonKey(name: 'minClearTime') int? stageMinClearTime,
  ) = _MatrixDto;

  factory MatrixDto.fromJson(Map<String, dynamic> json) =>
      _$MatrixDtoFromJson(json);

  factory MatrixDto.fromQueryResult(Map<String, dynamic> result) {
    final json = Map<String, dynamic>.from(result);

    final codeI18n = json['code_i18n'] as String;
    json['code_i18n'] = jsonDecode(codeI18n) as Map<String, dynamic>;

    return MatrixDto.fromJson(json);
  }

  static const tableName = 'matrix';
}

extension MatrixDtoToDomain on MatrixDto {
  Matrix toDomain() {
    return Matrix(
      id: UniqueId(),
      stageId: stageId ?? '',
      itemId: itemId ?? '',
      quantity: quantity ?? -1,
      times: times ?? -1,
      start: start?.toDateTime(),
      end: end?.toDateTime(),
      stageCodeI18n: _transferCodeI18n(),
      stageApCost: stageApCost ?? -1,
      stageMinClearTime: stageMinClearTime?.toDateTime(),
    );
  }

  KtMap<I18n, String> _transferCodeI18n() {
    final map = <I18n, String>{};
    stageCodeI18n?.forEach((key, value) => map[I18nValue.of(key)] = value);
    return map.toImmutableMap();
  }
}
