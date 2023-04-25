import 'package:domain_driven_design_note_app/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class AppConstants {
  static const int maxTodosNumber = 5;
}

class AppColors {
  static const Color appYellow = Color(0xffFFC948);
  static const Color appBlue = Color(0xff232896);
  static const Color appPurple = Color(0xff6a3fa2);

  static const Color pencilYellow = Color(0xffF7CD4E);
  static const Color shirtBlue = Color(0xff88D2EB);
  static const Color bodyPink = Color(0xffF28C8B);
  static const Color trousersPink = Color(0xffED385E);
  static const Color paperGrey = Color(0xffF1F0F6);

  static const Color errorRed = Color(0xffBE2929);

  static const List<Color> noteColorList = [
    paperGrey,
    pencilYellow,
    shirtBlue,
    bodyPink,
    trousersPink,
    appPurple,
    Colors.white,
  ];
}

class AppThemes {
  static ThemeData appTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.appYellow,
      primary: AppColors.appBlue,
    ),
    canvasColor: Colors.white,
    fontFamily: FontFamily.rubik,
    buttonTheme: const ButtonThemeData(height: 52),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            bottomLeft: Radius.circular(8),
          ),
        ),
        side: const BorderSide(
          width: 1.0,
          color: AppColors.appBlue,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 24,
        ),
        textStyle: appTextTheme.labelLarge,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 24,
        ),
        textStyle: appTextTheme.labelLarge,
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: const Size(80, 49),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(16),
        foregroundColor: AppColors.appBlue,
        iconColor: AppColors.appBlue,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.appBlue,
    ),
    inputDecorationTheme: textFieldTheme,
    textTheme: appTextTheme,
  );

  static final textFieldTheme = InputDecorationTheme(
    border: regularBorder,
    enabledBorder: regularBorder,
    focusedBorder: regularBorder,
    outlineBorder: const BorderSide(
      color: AppColors.appBlue,
      width: 0.5,
    ),
    activeIndicatorBorder: const BorderSide(
      color: AppColors.appBlue,
      width: 0.5,
    ),
    errorBorder: errorBorder,
    focusedErrorBorder: errorBorder,
    labelStyle: const TextStyle(color: AppColors.appBlue),
    hintStyle: appTextTheme.labelSmall,
  );

  static const appTextTheme = TextTheme(
    titleLarge: TextStyle(
      color: AppColors.appBlue,
      fontSize: 24,
    ),
    titleMedium: TextStyle(
      color: AppColors.appBlue,
      fontSize: 12,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
    ),
    bodyLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.normal,
      color: AppColors.appBlue,
    ),
    bodyMedium: TextStyle(
      fontWeight: FontWeight.w200,
      fontSize: 16,
    ),
    bodySmall: TextStyle(
      color: AppColors.appBlue,
      fontSize: 16,
    ),
    labelSmall: TextStyle(
      fontSize: 16,
      color: AppColors.appBlue,
      fontStyle: FontStyle.italic,
    ),
  );

  static final regularBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: AppColors.appBlue,
    ),
  );

  static final errorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: AppColors.errorRed,
    ),
  );
}
