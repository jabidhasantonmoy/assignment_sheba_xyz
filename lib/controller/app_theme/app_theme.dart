import 'package:flutter/material.dart';

import 'app_color.dart';

class AppTheme {
  // dark Theme

  static final darkMode = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.dark().copyWith(
      surface: AppColor.dBackgroundColor,
    ),
  );
}
