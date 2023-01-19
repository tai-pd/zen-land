import 'package:flutter/material.dart';
import 'package:zen_land/ui/ui.dart';
import './login_controller.dart';

class LoginScreen extends BaseScreen<LoginController> {
  LoginScreen({super.key});

  @override
  Widget? builder() {
    return Scaffold(
      body: _body,
    );
  }

  get _body {
    return Column();
  }
}
