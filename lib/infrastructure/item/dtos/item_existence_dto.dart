import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums/server.dart';
import '../../../domain/core/unique_id.dart';
import '../../../domain/item/entities/item_existence.dart';
import '../../../shared/extensions/int_to_datetime.dart';

part 'item_existence_dto.freezed.dart';
part 'item_existence_dto.g.dart';

@freezed
abstract class ItemExistenceDto with _$ItemExistenceDto {
  const factory ItemExistenceDto({
    @JsonKey(nullable: true) int closeTime,
    @JsonKey(defaultValue: false) bool exist,
    @JsonKey(nullable: true) int openTime,
    String server,
  }) = _ItemExistenceDto;

  factory ItemExistenceDto.fromJson(Map<String, dynamic> json) =>
      _$ItemExistenceDtoFromJson(json);
}

extension ItemExistenceDtoToDomain on ItemExistenceDto {
  ItemExistence toDomain() {
    return ItemExistence(
      id: UniqueId(),
      closeTime: closeTime?.toDateTime(),
      exist: exist,
      openTime: openTime?.toDateTime(),
      server: ServerValue.of(server),
    );
  }
}
