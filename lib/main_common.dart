import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:zen_land/flavor_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zen_land/routes/app_pages.dart';
import 'package:zen_land/utils/app_devices.dart';

// ignore: prefer_typing_uninitialized_variables
var flavorConfigProvider;

void mainCommon(FlavorConfig config) {
  flavorConfigProvider = StateProvider((ref) => config);

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final FlavorConfig config = ref.read(flavorConfigProvider);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: config.appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    AppDeviceInfo.init();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: widget.title,
      defaultTransition: Transition.cupertino,
      initialRoute: Routes.LOGIN,
      getPages: AppPages.pages,
    );
  }
}
