import 'package:get/get.dart';
import 'package:zen_land/app/pages/index.dart';

part './app_routes.dart';

class AppPages {
  AppPages._();

  static final List<GetPage> pages = <GetPage>[
    GetPage(name: Routes.LOGIN, page: () => LoginScreen(), binding: LoginBinding()),
    GetPage(name: Routes.HOME, page: () => HomeScreen(), binding: HomeBinding()),
  ];
}
