import 'package:freezed_annotation/freezed_annotation.dart';

import 'existence_model.dart';

part 'zone_model.freezed.dart';
part 'zone_model.g.dart';

@freezed
class ZoneModel with _$ZoneModel {
  const factory ZoneModel({
    @JsonKey(name: 'zoneId') @Default('') String id,
    @JsonKey(name: 'zoneIndex') int? index,
    @JsonKey(name: 'type') @Default('') String type,
    @JsonKey(name: 'subType') @Default('') String subType,
    @JsonKey(name: 'zoneName') @Default('') String name,
    ExistenceModel? existence,
    @Default(<String>[]) List<String> stages,
    @Default('') String background,
    @JsonKey(name: 'zoneName_i18n')
    @Default(<String, String>{})
        Map<String, String> nameI18n,
  }) = _ZoneModel;

  factory ZoneModel.fromJson(Map<String, dynamic> json) =>
      _$ZoneModelFromJson(json);
}
