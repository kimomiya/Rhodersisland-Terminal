import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/core/entities/existence.dart';
import '../../../domain/core/unique_id.dart';
import '../../../shared/extensions/int_to_datetime.dart';

part 'existence_dto.freezed.dart';
part 'existence_dto.g.dart';

@freezed
class ExistenceDto with _$ExistenceDto {
  const factory ExistenceDto(
    int? closeTime,
    bool? exist,
    int? openTime,
  ) = _ExistenceDto;

  factory ExistenceDto.fromJson(Map<String, dynamic> json) =>
      _$ExistenceDtoFromJson(json);
}

extension ExistenceDtoToDomain on ExistenceDto {
  Existence toDomain() {
    return Existence(
      id: UniqueId(),
      closeTime: closeTime?.toDateTime(),
      exist: exist ?? false,
      openTime: openTime?.toDateTime(),
    );
  }
}
