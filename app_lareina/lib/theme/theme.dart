import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:app_lareina/screens/splashscreen.dart';
import 'package:app_lareina/screens/chats.dart';
import 'package:app_lareina/theme/theme.dart';

class AppTheme {
  // Tema claro
  static ThemeData lightTheme = FlexThemeData.light(
   scheme: FlexScheme.bahamaBlue,
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 7,
    lightIsWhite: true,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 10,
      useTextTheme: true,
      useM2StyleDividerInM3: true,
      alignedDropdown: true,
      useInputDecoratorThemeInDialogs: true,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    swapLegacyOnMaterial3: true,
    // fontFamily: GoogleFonts.notoSans().fontFamily,
  );

  // Tema oscuro
  static ThemeData darkTheme = FlexThemeData.dark(
    scheme: FlexScheme.bahamaBlue,
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 13,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 20,
      useTextTheme: true,
      useM2StyleDividerInM3: true,
      alignedDropdown: true,
      useInputDecoratorThemeInDialogs: true,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    swapLegacyOnMaterial3: true,
    // fontFamily: GoogleFonts.notoSans().fontFamily,
  );

 
  // static ThemeMode themeMode = ThemeMode.system; En caso de querer usar el tema por defecto del teléfono ;)
}
