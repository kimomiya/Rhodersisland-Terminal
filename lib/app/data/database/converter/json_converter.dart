import 'package:moor/moor.dart';
import 'package:supercharged/supercharged.dart';

import '../../../core/alias/type_alias.dart';

class JsonConverter extends TypeConverter<Json, String> {
  @override
  Json? mapToDart(String? fromDb) => fromDb?.parseJSON() as Json?;

  @override
  String? mapToSql(Json? value) => value?.toJSON();
}
