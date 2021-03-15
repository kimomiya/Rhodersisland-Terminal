// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drop_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DropInfoDto _$_$_DropInfoDtoFromJson(Map<String, dynamic> json) {
  return _$_DropInfoDto(
    json['itemId'] as String?,
    json['dropType'] as String?,
    json['bounds'] == null
        ? null
        : BoundsDto.fromJson(json['bounds'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DropInfoDtoToJson(_$_DropInfoDto instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'dropType': instance.dropType,
      'bounds': instance.bounds,
    };
