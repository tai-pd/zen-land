// ignore_for_file: unused_field, unnecessary_getters_setters

import 'package:flutter/material.dart';
import './base_page_screen.dart';

abstract class BasePageScreenState<Page extends BasePageScreen>
    extends State<Page> {
  bool _isBack = true;
  bool _isOption = true;

  String appBarTitle();

  void onBackButton();
  void onOptionButton();

  bool get backButton {
    return _isBack;
  }

  set backButton(bool isBack) {
    _isBack = isBack;
  }

  bool get optionButton {
    return _isOption;
  }

  set optionButton(bool isOtion) {
    _isOption = isOtion;
  }
}
