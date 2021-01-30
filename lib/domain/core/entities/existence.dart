import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/entity.dart';
import '../../core/unique_id.dart';

part 'existence.freezed.dart';

@freezed
abstract class Existence with _$Existence implements Entity {
  const factory Existence({
    @required UniqueId id,
    DateTime closeTime,
    @required bool exist,
    DateTime openTime,
  }) = _Existence;
}
