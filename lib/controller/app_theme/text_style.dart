import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/media_size.dart';
import 'app_color.dart';

class TStyle {
  static TextStyle roboto({
    Color? color,
    double? fontSize,
    FontWeight fontWeight = FontWeight.w400,
  }) {
    return GoogleFonts.roboto(
      color: color ?? AppColor.textFFFFFF,
      fontSize: fontSize ?? fixedRatio(10),
      fontWeight: fontWeight,
    );
  }
}
