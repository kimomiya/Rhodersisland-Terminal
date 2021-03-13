import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../core/constants/app_constants.dart';
import '../dtos/item_dto.dart';

abstract class ItemRemoteDataSource {
  Future<List<ItemDto>> fetchItems();
}

@LazySingleton(as: ItemRemoteDataSource)
class ItemRemoteDataSourceImpl implements ItemRemoteDataSource {
  const ItemRemoteDataSourceImpl({
    required this.client,
  });

  final Dio client;

  @override
  Future<List<ItemDto>> fetchItems() async {
    const url = '$penguinStatsBaseURL/items';

    final response = await client.get<List>(url);

    final items = <ItemDto>[];
    for (final data in response.data ?? <dynamic>[]) {
      items.add(ItemDto.fromJson(data as Map<String, dynamic>));
    }
    return items;
  }
}
