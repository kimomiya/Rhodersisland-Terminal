import 'package:moor/moor.dart';
import 'package:supercharged/supercharged.dart';

class JsonConverter extends TypeConverter<Map<String, dynamic>, String> {
  @override
  Map<String, dynamic>? mapToDart(String? fromDb) =>
      fromDb?.parseJSON() as Map<String, dynamic>?;

  @override
  String? mapToSql(Map<String, dynamic>? value) => value?.toJSON();
}
