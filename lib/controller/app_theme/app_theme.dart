import 'package:assignment_sheba_xyz/controller/app_theme/text_style.dart';
import 'package:flutter/material.dart';

import '../utils/media_size.dart';
import 'app_color.dart';

class AppTheme {
  // dark Theme

  static final darkMode = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.dark().copyWith(
      surface: AppColor.dBackgroundColor,
    ),
    inputDecorationTheme: _lightInputDecorationTheme(),
  );

  static InputDecorationTheme _lightInputDecorationTheme() {
    return InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey.shade800,
      hintStyle: TStyle.roboto(
        fontSize: 15,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(fixedRatio(25)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(fixedRatio(25)),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(fixedRatio(25)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(fixedRatio(25)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(fixedRatio(25)),
      ),
    );
  }
}
