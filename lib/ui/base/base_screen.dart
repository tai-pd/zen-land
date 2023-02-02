import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zen_land/ui/base/base_page_screen.dart';
import 'package:zen_land/ui/base/base_page_screen_state.dart';
import 'index.dart';
import '../common_widgets/index.dart';

mixin BaseScreen<T extends BaseController, Page extends BasePageScreen>
    on GetResponsiveView<T>, BasePageScreenState<Page> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return GetX<T>(
      builder: (BaseController controller) {
        return Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue.shade200, Colors.pink.shade300]
              )
            ),
          ),
            title: Text(appBarTitle(), style: const TextStyle(
              color: Colors.black54, 
              fontSize: 20, 
              fontWeight: FontWeight.bold),),
            leading: backButton ? 
              IconButton(onPressed: () => onBackButton(), icon: Icon(Icons.arrow_back_ios, color: Colors.black54,))
              : const SizedBox(),
            actions: <Widget>[
              optionButton ? IconButton(onPressed: () => onOptionButton(), icon: Icon(Icons.settings, color: Colors.black54,))
              : const SizedBox(),
            ],
          ),
          body: Container(
            child: controller.loading
              ? body()
              : LoadingScreen(
                  loading: controller.loading, child: builder()!)
            )
          );
      },
    );
  }

  Widget body();

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
