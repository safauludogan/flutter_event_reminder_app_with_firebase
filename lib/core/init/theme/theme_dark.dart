import 'package:event_reminder_app/core/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomThemeDark {
  CustomThemeDark(this.context);
  BuildContext context;

  ThemeData? get theme => ThemeData.dark().copyWith(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.black,
        primaryColor: ColorConstants.primaryColor,
        dividerColor: Colors.grey,
        appBarTheme: _appBarTheme,
        elevatedButtonTheme: _elevatedButtonStyle,
        colorScheme: _colorScheme.copyWith(
          background: ColorConstants.backgroundColor,
        ),
      );

  ColorScheme get _colorScheme => ColorScheme.fromSwatch(
        cardColor: Colors.white,
        primarySwatch: MaterialColor(
          ColorConstants.primaryColorList[50]!.value,
          ColorConstants.primaryColorList,
        ),
      );

  AppBarTheme get _appBarTheme => AppBarTheme(
        backgroundColor: ColorConstants.backgroundColor,
        centerTitle: true,
        iconTheme: IconThemeData(color: ColorConstants.primaryColor),
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.w400,
        ),
      );

  ElevatedButtonThemeData get _elevatedButtonStyle => ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: ColorConstants.primaryColor,
        ),
      );
}
