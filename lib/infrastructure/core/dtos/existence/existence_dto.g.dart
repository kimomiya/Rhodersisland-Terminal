// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'existence_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExistenceDto _$_$_ExistenceDtoFromJson(Map<String, dynamic> json) {
  return _$_ExistenceDto(
    server: json['server'] as String,
    closeTime: json['closeTime'] as int,
    exist: json['exist'] as bool ?? false,
    openTime: json['openTime'] as int,
  );
}

Map<String, dynamic> _$_$_ExistenceDtoToJson(_$_ExistenceDto instance) =>
    <String, dynamic>{
      'server': instance.server,
      'closeTime': instance.closeTime,
      'exist': instance.exist,
      'openTime': instance.openTime,
    };
