import 'package:counter_app/presentation/screens/homepage.dart';
import 'package:counter_app/presentation/screens/secondPage.dart';
import 'package:counter_app/presentation/screens/thirdPage.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGeneratedRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomePage(
            title: 'HomePage',
            color: Colors.blueAccent,
          ),
        );
      case '/secondPage':
        return MaterialPageRoute(
          builder: (_) => const SecondPage(
            title: 'SecondPage',
            color: Colors.redAccent,
          ),
        );
      case '/thirdPage':
        return MaterialPageRoute(
          builder: (_) => const ThirdPage(
            title: 'ThirdPage',
            color: Colors.yellowAccent,
          ),
        );
      default:
        return null;
    }
  }
}
