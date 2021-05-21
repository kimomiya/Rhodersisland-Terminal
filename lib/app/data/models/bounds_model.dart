import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/alias/type_alias.dart';

part 'bounds_model.freezed.dart';
part 'bounds_model.g.dart';

@freezed
class BoundsModel with _$BoundsModel {
  const factory BoundsModel({
    int? lower,
    int? upper,
  }) = _BoundsModel;

  factory BoundsModel.fromJson(Json json) => _$BoundsModelFromJson(json);
}
