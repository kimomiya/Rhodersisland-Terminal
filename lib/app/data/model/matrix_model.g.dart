// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matrix_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MatrixModel _$_$_MatrixModelFromJson(Map<String, dynamic> json) {
  return _$_MatrixModel(
    stageId: json['stageId'] as String? ?? '',
    itemId: json['itemId'] as String? ?? '',
    quantity: json['quantity'] as int?,
    times: json['times'] as int?,
    start: json['start'] as int?,
  );
}

Map<String, dynamic> _$_$_MatrixModelToJson(_$_MatrixModel instance) =>
    <String, dynamic>{
      'stageId': instance.stageId,
      'itemId': instance.itemId,
      'quantity': instance.quantity,
      'times': instance.times,
      'start': instance.start,
    };
