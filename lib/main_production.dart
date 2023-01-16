import 'package:flutter/material.dart';
import 'package:zen_land/flavor_config.dart';
import 'package:zen_land/main_common.dart';

void main() {
  final productionConfig = FlavorConfig();
  productionConfig.appTitle = 'Zen Land';
  productionConfig.apiEndpoint = {
    Endpoints.items: 'zenlab.api/',
    Endpoints.details: 'zenlab.api/'
  };
  productionConfig.theme = ThemeData.light();

  mainCommon(productionConfig);
}
