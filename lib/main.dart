import 'package:app_2_sales/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App2Sales());
}

class App2Sales extends StatelessWidget {
  const App2Sales({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App2Sales',
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
