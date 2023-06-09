import 'package:flutter/material.dart';
import 'package:mvvm_example/config/themes/color.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.white,
      unselectedWidgetColor: AppColors.greenColor,
      fontFamily: 'Montserrat',
      primaryColor: colorCustom,
      primarySwatch: colorCustom,
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        buttonColor: AppColors.secondaryPurpleColor
      ),
    );
  }
}
