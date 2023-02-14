// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zen_land/ui/base/base_page_screen_state.dart';
import 'package:zen_land/ui/base/base_screen_mixin.dart';
import './home_controller.dart';

class HomeScreen extends BasePageScreenState<HomeController>
    with BaseScreenMixin {
  HomeScreen({super.key});

  @override
  bool get backButton => false;

  @override
  String appBarTitle() {
    return "HOME";
  }

  @override
  Widget body() {
    return Container(
      child: Text("This is Home"),
    );
  }

  @override
  void onBackButton() {
    Get.back();
  }

  @override
  void onOptionButton() {
    // TODO: implement onOptionButton
  }
}
