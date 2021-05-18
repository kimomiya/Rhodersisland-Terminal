import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../failure/app_failure.dart';

void showError(AppFailure failure) {
  Get.snackbar<dynamic>(
    'error'.tr,
    failure.message.tr,
    snackPosition: SnackPosition.BOTTOM,
    margin: const EdgeInsets.all(8),
    backgroundColor: Colors.red.withOpacity(0.25),
  );
}
