import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/alias/type_alias.dart';

part 'existence_model.freezed.dart';
part 'existence_model.g.dart';

@freezed
class ExistenceModel with _$ExistenceModel {
  const factory ExistenceModel({
    int? closeTime,
    @Default(false) bool exist,
    int? openTime,
  }) = _ExistenceModel;

  factory ExistenceModel.fromJson(Json json) => _$ExistenceModelFromJson(json);
}
