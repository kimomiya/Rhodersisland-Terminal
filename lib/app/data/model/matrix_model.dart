import 'package:freezed_annotation/freezed_annotation.dart';

part 'matrix_model.freezed.dart';
part 'matrix_model.g.dart';

@freezed
abstract class MatrixModel with _$MatrixModel {
  const factory MatrixModel({
    @Default('') String stageId,
    @Default('') String itemId,
    int? quantity,
    int? times,
    int? start,
  }) = _MatrixModel;

  factory MatrixModel.fromJson(Map<String, dynamic> json) =>
      _$MatrixModelFromJson(json);
}
