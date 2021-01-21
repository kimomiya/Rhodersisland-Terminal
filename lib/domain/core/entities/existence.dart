import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums/server.dart';
import '../entity.dart';
import '../unique_id.dart';

part 'existence.freezed.dart';

@freezed
abstract class Existence with _$Existence implements Entity {
  const factory Existence({
    @required UniqueId id,
    @required Server server,
    DateTime closeTime,
    @required bool exist,
    DateTime openTime,
  }) = _Existence;
}
