import 'package:flutter/material.dart';
import 'package:zen_land/flavor_config.dart';
import 'package:zen_land/main_common.dart';

void main() {
  final devConfig = FlavorConfig();
  devConfig.appTitle = 'Zen land devvvvvv 123';
  devConfig.apiEndpoint = {
    Endpoints.items: 'zenlab.api.dev/abc',
    Endpoints.details: 'zenlab.api.dev/abc'
  };
  devConfig.theme = ThemeData.dark();

  mainCommon(devConfig);
}
