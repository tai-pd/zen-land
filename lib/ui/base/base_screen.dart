import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'index.dart';
import '../common_widgets/index.dart';

abstract class BaseScreen<T extends BaseController> extends GetResponsiveView<T>{
  BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return GetX<T>(
      dispose: (GetXState<T> state) {
        Get.delete<T>();
      },
      initState: (state) {
        // Todo
      },
      builder: (BaseController controller) {
        return LoadingScreen(loading: controller.loading, child: builder()!);
      },
    );
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
