import 'package:flutter/material.dart';
import 'package:zen_land/ui/base/base_page_screen_state.dart';
import 'package:zen_land/ui/base/base_screen_mixin.dart';
import './login_controller.dart';

class LoginScreen extends BasePageScreenState<LoginController>
    with BaseScreenMixin {
  LoginScreen({super.key});

  @override
  bool get backButton => false;

  @override
  bool get optionButton => false;

  @override
  String appBarTitle() {
    return 'Login';
  }

  @override
  Widget body() {
    return Container();
  }

  @override
  void onBackButton() {}

  @override
  void onOptionButton() {
    // TODO: implement onOptionButton
  }
}
