import 'package:app_2_sales/screens/screenNavigation.dart';
import 'package:app_2_sales/screens/splash.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/': (BuildContext context) => const Splash(),
  '/ScreenNavigation': (BuildContext context) => const ScreenNavigation(),
};
