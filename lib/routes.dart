import 'package:app_2_sales/screens/home/screenNavigation.dart';
import 'package:app_2_sales/screens/home/splash.dart';
import 'package:app_2_sales/screens/video/videoPresentation.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/': (BuildContext context) => const Splash(),
  '/ScreenNavigation': (BuildContext context) => const ScreenNavigation(),
  '/VideoPresentation': (BuildContext context) => const VideoPresentation(),
};
