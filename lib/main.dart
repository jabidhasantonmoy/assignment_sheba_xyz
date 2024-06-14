import 'package:flutter/material.dart';

import 'controller/app_routes/app_routes.dart';
import 'controller/app_theme/app_theme.dart';
import 'controller/utils/media_size.dart';
import 'view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Application Root.
  @override
  Widget build(BuildContext context) {
    mediaHeight = MediaQuery.of(context).size.height;
    mediaWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      title: 'Sheba',
      theme: AppTheme.darkMode,
      initialRoute: HomePage.routeName,
      onGenerateRoute: AppRoutes.onGenerate,
    );
  }
}
