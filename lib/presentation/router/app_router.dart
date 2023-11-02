import 'package:counter_app/presentation/screens/homepage.dart';
import 'package:flutter/material.dart';

class AppRouter {
  AppRouter();

  Route? onGeneratedRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => HomePage(),
        );
      case '/secondPage':
        return MaterialPageRoute(
          builder: (_) => HomePage(),
        );
      case '/thirdPage':
        return MaterialPageRoute(
          builder: (_) => HomePage(),
        );
      default:
        return null;
    }
  }
}
