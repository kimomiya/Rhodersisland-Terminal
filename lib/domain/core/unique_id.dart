import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';

import 'value_failure.dart';
import 'value_object.dart';

class UniqueId extends ValueObject<String> {
  factory UniqueId() => UniqueId._(right(const Uuid().v1()));

  factory UniqueId.fromUniqueString(String uniqueString) =>
      UniqueId._(right(uniqueString));

  const UniqueId._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
