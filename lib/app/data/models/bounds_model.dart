import 'package:freezed_annotation/freezed_annotation.dart';

part 'bounds_model.freezed.dart';
part 'bounds_model.g.dart';

@freezed
class BoundsModel with _$BoundsModel {
  const factory BoundsModel({
    int? lower,
    int? upper,
  }) = _BoundsModel;

  factory BoundsModel.fromJson(Map<String, dynamic> json) =>
      _$BoundsModelFromJson(json);
}
