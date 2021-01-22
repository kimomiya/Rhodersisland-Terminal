// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'existence_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExistenceDto _$_$_ExistenceDtoFromJson(Map<String, dynamic> json) {
  return _$_ExistenceDto(
    closeTime: json['closeTime'] as int,
    exist: json['exist'] as bool ?? false,
    openTime: json['openTime'] as int,
    server: json['server'] as String,
  );
}

Map<String, dynamic> _$_$_ExistenceDtoToJson(_$_ExistenceDto instance) =>
    <String, dynamic>{
      'closeTime': instance.closeTime,
      'exist': instance.exist,
      'openTime': instance.openTime,
      'server': instance.server,
    };
