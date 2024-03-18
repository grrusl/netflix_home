import 'package:flutter/material.dart';
import 'package:netflix_home/core/constants/constants.dart';

ThemeData customTheme() => ThemeData(
      useMaterial3: true,
      fontFamily: 'Roboto',
      appBarTheme: appBarTheme(),
      outlinedButtonTheme: outlineButtonStyle(),
      filledButtonTheme: filledButtonThemeMain(),
    );

AppBarTheme appBarTheme() => AppBarTheme(
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.black26,
      centerTitle: false,
      titleTextStyle: Fonts.title.copyWith(color: Colors.white, fontSize: 26),
      actionsIconTheme: actionIcons(),
    );

IconThemeData actionIcons() => const IconThemeData(
      size: 26.0,
      color: Colors.white,
    );

OutlinedButtonThemeData outlineButtonStyle() => OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white,
          minimumSize: const Size(88, 36),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          side: const BorderSide(width: 1, color: Colors.white)),
    );

FilledButtonThemeData filledButtonThemeMain() => FilledButtonThemeData(
      style: FilledButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
      ),
    );
