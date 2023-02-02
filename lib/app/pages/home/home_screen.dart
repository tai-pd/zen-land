import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';
import 'package:zen_land/ui/base/base_page_screen.dart';
import 'package:zen_land/ui/base/base_page_screen_state.dart';
import 'package:zen_land/ui/ui.dart';
import './home_controller.dart';

class HomeScreen extends BasePageScreen {
  @override
  _HomeScreenState createState() => _HomeScreenState(); 
}

class _HomeScreenState extends BasePageScreenState<HomeScreen> with BaseScreen<HomeController> {
  @override
  // TODO: implement alwaysUseBuilder
  bool get alwaysUseBuilder => throw UnimplementedError();

  @override
  String appBarTitle() {
    // TODO: implement appBarTitle
    throw UnimplementedError();
  }

  @override
  Widget body() {
    // TODO: implement body
    throw UnimplementedError();
  }

  @override
  // TODO: implement controller
  BaseController get controller => throw UnimplementedError();

  @override
  StatelessElement createElement() {
    // TODO: implement createElement
    throw UnimplementedError();
  }

  @override
  List<DiagnosticsNode> debugDescribeChildren() {
    // TODO: implement debugDescribeChildren
    throw UnimplementedError();
  }

  @override
  Widget? desktop() {
    // TODO: implement desktop
    throw UnimplementedError();
  }

  @override
  // TODO: implement key
  Key? get key => throw UnimplementedError();

  @override
  void onBackButton() {
    // TODO: implement onBackButton
  }

  @override
  void onOptionButton() {
    // TODO: implement onOptionButton
  }

  @override
  // TODO: implement screen
  ResponsiveScreen get screen => throw UnimplementedError();

  @override
  Widget? tablet() {
    // TODO: implement tablet
    throw UnimplementedError();
  }

  @override
  // TODO: implement tag
  String? get tag => throw UnimplementedError();

  @override
  String toStringDeep({String prefixLineOne = '', String? prefixOtherLines, DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    // TODO: implement toStringDeep
    throw UnimplementedError();
  }

  @override
  String toStringShallow({String joiner = ', ', DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    // TODO: implement toStringShallow
    throw UnimplementedError();
  }

  @override
  Widget? watch() {
    // TODO: implement watch
    throw UnimplementedError();
  }

}
