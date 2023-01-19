import 'package:flutter/material.dart';
import 'package:zen_land/ui/ui.dart';
import './home_controller.dart';

class HomeScreen extends BaseScreen<HomeController> {
  HomeScreen({super.key});

  @override
  Widget builder() {
    return Scaffold(
      body: _body,
    );
  }

  get _body {
    return Container();
  }
}
