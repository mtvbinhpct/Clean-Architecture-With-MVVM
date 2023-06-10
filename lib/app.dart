import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/presentation/resources/routes_manager.dart';
import 'presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  const MyApp._internal(); // private name constructor
  static const MyApp instance = MyApp._internal();

  factory MyApp() => instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme(),
      initialRoute: Routes.splashRoute,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (routeSetting) => RouteGenerator.getRoute(routeSetting),
    );
  }
}
