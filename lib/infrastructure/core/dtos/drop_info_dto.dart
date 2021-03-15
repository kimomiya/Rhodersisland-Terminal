import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums/drop_type.dart';
import '../../../domain/core/entities/drop_info.dart';
import '../../../domain/core/unique_id.dart';
import 'bounds_dto.dart';

part 'drop_info_dto.freezed.dart';
part 'drop_info_dto.g.dart';

@freezed
class DropInfoDto with _$DropInfoDto {
  const factory DropInfoDto(
    String? itemId,
    String? dropType,
    BoundsDto? bounds,
  ) = _DropInfoDto;

  factory DropInfoDto.fromJson(Map<String, dynamic> json) =>
      _$DropInfoDtoFromJson(json);
}

extension DropInfoDtoToDomain on DropInfoDto {
  DropInfo toDomain() {
    return DropInfo(
      id: UniqueId(),
      itemId: itemId ?? '',
      type: DropTypeValue.of(dropType),
      bounds: bounds?.toDomain(),
    );
  }
}
