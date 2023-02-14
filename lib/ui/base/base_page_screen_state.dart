// ignore_for_file: unused_field

import 'package:zen_land/ui/base/index.dart';

abstract class BasePageScreenState<T extends BaseController>
    extends BaseScreen<T> {
  BasePageScreenState({super.key});

  final bool _isBack = true;
  final bool _isOption = true;

  String appBarTitle();

  void onBackButton();
  void onOptionButton();

  @override
  builder();

  bool get backButton {
    return _isBack;
  }

  bool get optionButton {
    return _isOption;
  }

}
