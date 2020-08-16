// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tip _$_$_TipFromJson(Map<String, dynamic> json) {
  return _$_Tip(
    tip: json['tip'] as String ?? '',
    weight: (json['weight'] as num)?.toDouble() ?? '',
    category: json['category'] as String ?? '',
  );
}

Map<String, dynamic> _$_$_TipToJson(_$_Tip instance) => <String, dynamic>{
      'tip': instance.tip,
      'weight': instance.weight,
      'category': instance.category,
    };
