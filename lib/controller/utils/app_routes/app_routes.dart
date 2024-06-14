import 'package:flutter/material.dart';

import '../../../view/home_page.dart';

class AppRoutes {
  static Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case HomePage.routeName:
        return MaterialPageRoute(builder: (_) => const HomePage());
      default:
        return null;
    }
  }
}
