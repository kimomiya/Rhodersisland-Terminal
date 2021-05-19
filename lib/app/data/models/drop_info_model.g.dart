// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drop_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DropInfoModel _$_$_DropInfoModelFromJson(Map<String, dynamic> json) {
  return _$_DropInfoModel(
    itemId: json['itemId'] as String? ?? '',
    type: json['dropType'] as String,
    bounds: json['bounds'] == null
        ? null
        : BoundsModel.fromJson(json['bounds'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DropInfoModelToJson(_$_DropInfoModel instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'dropType': instance.type,
      'bounds': instance.bounds,
    };
