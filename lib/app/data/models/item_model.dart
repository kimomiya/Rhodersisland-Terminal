import 'package:freezed_annotation/freezed_annotation.dart';

import 'existence_model.dart';

part 'item_model.freezed.dart';
part 'item_model.g.dart';

@freezed
class ItemModel with _$ItemModel {
  const factory ItemModel({
    int? addTimePoint,
    @Default(<String, List<String>>{}) Map<String, List<String>> alias,
    @Default(<String, ExistenceModel>{}) Map<String, ExistenceModel> existence,
    @Default('') String groupId,
    @JsonKey(name: 'itemId') @Default('') String id,
    @JsonKey(name: 'itemType') @Default('') String type,
    @Default('') String name,
    @JsonKey(name: 'name_i18n')
    @Default(<String, String>{})
        Map<String, String> nameI18n,
    @Default(<String, List<String>>{}) Map<String, List<String>> pron,
    int? rarity,
    int? sortId,
    @Default(<int>[]) List<int> spriteCoord,
  }) = _ItemModel;

  factory ItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemModelFromJson(json);
}
