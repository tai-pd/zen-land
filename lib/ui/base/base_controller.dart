import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseController extends GetxController {
  BuildContext context = Get.context!;

  RxBool load = false.obs;

  bool get loading {
    return load.value;
  }

  set loading(bool value) {
    load.value = value;
  }
}
