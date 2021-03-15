import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/core/entities/bounds.dart';
import '../../../domain/core/unique_id.dart';

part 'bounds_dto.freezed.dart';
part 'bounds_dto.g.dart';

@freezed
class BoundsDto with _$BoundsDto {
  const factory BoundsDto(
    int? lower,
    int? upper,
  ) = _BoundsDto;

  factory BoundsDto.fromJson(Map<String, dynamic> json) =>
      _$BoundsDtoFromJson(json);
}

extension BoundsDtoToDomain on BoundsDto {
  Bounds toDomain() {
    return Bounds(
      id: UniqueId(),
      lower: lower ?? -1,
      upper: upper ?? -1,
    );
  }
}
