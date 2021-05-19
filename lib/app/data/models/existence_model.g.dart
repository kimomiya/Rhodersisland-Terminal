// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'existence_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExistenceModel _$_$_ExistenceModelFromJson(Map<String, dynamic> json) {
  return _$_ExistenceModel(
    closeTime: json['closeTime'] as int?,
    exist: json['exist'] as bool? ?? false,
    openTime: json['openTime'] as int?,
  );
}

Map<String, dynamic> _$_$_ExistenceModelToJson(_$_ExistenceModel instance) =>
    <String, dynamic>{
      'closeTime': instance.closeTime,
      'exist': instance.exist,
      'openTime': instance.openTime,
    };
