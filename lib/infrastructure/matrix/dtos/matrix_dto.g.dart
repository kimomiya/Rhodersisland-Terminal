// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matrix_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MatrixDto _$_$_MatrixDtoFromJson(Map<String, dynamic> json) {
  return _$_MatrixDto(
    json['stageId'] as String?,
    json['itemId'] as String?,
    json['quantity'] as int?,
    json['times'] as int?,
    json['start'] as int?,
    json['end'] as int?,
  );
}

Map<String, dynamic> _$_$_MatrixDtoToJson(_$_MatrixDto instance) =>
    <String, dynamic>{
      'stageId': instance.stageId,
      'itemId': instance.itemId,
      'quantity': instance.quantity,
      'times': instance.times,
      'start': instance.start,
      'end': instance.end,
    };
