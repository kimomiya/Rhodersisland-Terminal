import 'package:freezed_annotation/freezed_annotation.dart';

part 'tip.freezed.dart';
part 'tip.g.dart';

@freezed
abstract class Tip with _$Tip {
  const factory Tip({
    @JsonKey(defaultValue: '') String tip,
    @JsonKey(defaultValue: '') double weight,
    @JsonKey(defaultValue: '') String category,
  }) = _Tip;

  factory Tip.fromJson(Map<String, dynamic> json) => _$TipFromJson(json);

  static const String tableName = 'Tip';
}
