import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../core/constants/app_constants.dart';
import '../dtos/item_dto.dart';

abstract class ItemRemoteDataSource {
  Future<List<ItemDto>> fetchItems();

  Future<ItemDto> fetchItemBy({required String id});
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

  @override
  Future<ItemDto> fetchItemBy({required String id}) async {
    final url = '$penguinStatsBaseURL/items/$id';
    final response = await client.get<Map<String, dynamic>>(url);
    return ItemDto.fromJson(response.data ?? <String, dynamic>{});
  }
}
