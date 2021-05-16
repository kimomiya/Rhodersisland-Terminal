import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/items/items_controller.dart';

class ItemsPage extends GetView<ItemsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('itemsPage'.tr)),
      body: Container(),
    );
  }
}
