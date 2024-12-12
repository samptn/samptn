import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void kPrint(dynamic object) {
  if (kDebugMode) {
    print(object);
  }
}

class AppFonts {
  // nunito
  static const String fontNunito = "Nunito";
  static TextStyle nunito({
    double? fontSize,
    FontWeight? fontWeight = FontWeight.normal,
    Color? color = Colors.black,
    double? letterSpacing,
    double? height,
    TextDecoration? decoration,
    TextOverflow? overflow = TextOverflow.ellipsis,
  }) {
    return GoogleFonts.nunito(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing,
      height: height,
      decoration: decoration,
    );
  }
}

class AppColors {
  static const Color primaryColor = Color(0xFF2196F3);
  static const Color secondaryColor = Color(0xFF607D8B);
  static const Color accentColor = Color(0xFF90CAF9);
  static const Color backgroundColor = Color(0xFFF5F5F5);
  static const Color textColor = Color(0xFF212121);
  static const Color grayTextColor = Color(0xFF9E9E9E);
  static const Color dividerColor = Color(0xFFE0E0E0);
}
