import 'package:freezed_annotation/freezed_annotation.dart';

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
  ) = _MatrixDto;

  factory MatrixDto.fromJson(Map<String, dynamic> json) =>
      _$MatrixDtoFromJson(json);

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
    );
  }
}
