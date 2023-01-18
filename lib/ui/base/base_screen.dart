import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'index.dart';
import '../common_widgets/index.dart';

class BaseScreen<T extends BaseController> extends GetResponsiveView<T> {
  BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return GetX<T>(
      builder: (BaseController controller) {
        return LoadingScreen(loading: controller.loading, child: builder()!);
      },
    );
  }

  void dispose(GetXState<T> state) {
    Logger().i('DISPOSE: "$runtimeType" - "$T"');
    Get.delete<T>();
  }

  @override
  Widget? builder() {
    switch (screen.screenType) {
      case ScreenType.Watch:
        return watch();
      case ScreenType.Phone:
        return phone();
      case ScreenType.Tablet:
        return tablet();
      case ScreenType.Desktop:
        return desktop();
    }
  }

  @override
  Widget phone() {
    return const SizedBox();
  }
}
