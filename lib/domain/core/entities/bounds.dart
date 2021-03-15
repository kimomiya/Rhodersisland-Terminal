import 'package:freezed_annotation/freezed_annotation.dart';

import '../entity.dart';
import '../unique_id.dart';

part 'bounds.freezed.dart';

@freezed
class Bounds with _$Bounds implements Entity {
  const factory Bounds({
    required UniqueId id,
    required int lower,
    required int upper,
  }) = _Bounds;
}
