import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/alias/type_alias.dart';

part 'matrix_model.freezed.dart';
part 'matrix_model.g.dart';

@freezed
class MatrixModel with _$MatrixModel {
  const factory MatrixModel({
    @Default('') String stageId,
    @Default('') String itemId,
    int? quantity,
    int? times,
    int? start,
  }) = _MatrixModel;

  factory MatrixModel.fromJson(Json json) => _$MatrixModelFromJson(json);
}
