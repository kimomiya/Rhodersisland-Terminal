import 'package:freezed_annotation/freezed_annotation.dart';

import 'bounds_model.dart';

part 'drop_info_model.freezed.dart';
part 'drop_info_model.g.dart';

@freezed
class DropInfoModel with _$DropInfoModel {
  const factory DropInfoModel({
    @Default('') String itemId,
    @JsonKey(name: 'dropType') @Default('') String type,
    BoundsModel? bounds,
  }) = _DropInfoModel;

  factory DropInfoModel.fromJson(Map<String, dynamic> json) =>
      _$DropInfoModelFromJson(json);
}
