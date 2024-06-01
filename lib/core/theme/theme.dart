import 'package:blog_app/core/theme/app_pallet.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static _border([Color color = AppPallete.borderColor]) => OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 3.5),
      borderRadius: BorderRadius.circular(10));
  static final darkThemeMode = ThemeData.dark()
      .copyWith(scaffoldBackgroundColor: AppPallete.backgroundColor);
  InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
      contentPadding: EdgeInsets.all(30),
      enabledBorder: _border(),
      focusedBorder: _border(AppPallete.gradient2));
}
