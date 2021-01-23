// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_existence_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemExistenceDto _$_$_ItemExistenceDtoFromJson(Map<String, dynamic> json) {
  return _$_ItemExistenceDto(
    closeTime: json['closeTime'] as int,
    exist: json['exist'] as bool ?? false,
    openTime: json['openTime'] as int,
    server: json['server'] as String,
  );
}

Map<String, dynamic> _$_$_ItemExistenceDtoToJson(
        _$_ItemExistenceDto instance) =>
    <String, dynamic>{
      'closeTime': instance.closeTime,
      'exist': instance.exist,
      'openTime': instance.openTime,
      'server': instance.server,
    };
