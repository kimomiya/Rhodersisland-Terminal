import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/item_details/item_details_controller.dart';

class ItemDetailsPage extends GetView<ItemDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('stats'.tr)),
      body: GetBuilder<ItemDetailsController>(
        builder: (_) => Container(),
      ),
    );
  }
}
