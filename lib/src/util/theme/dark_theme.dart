import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'text_theme.dart';

const _mapColor = <int, Color>{
  50: Color(0xFFF5F5F5),
  100: Color(0xFFF5F5F5),
  200: Color(0xFFEEEEEE),
  300: Color(0xFFE0E0E0),
  400: Color(0xFFBDBDBD),
  500: Color(0xFF9E9E9E),
  600: Color(0xFF757575),
  700: Color(0xFF616161),
  800: Color(0xFF424242),
  900: Color(0xFF212121),
  1000: Color(0xFF000000),
};

final appThemeDark = ThemeData(
  useMaterial3: true,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primarySwatch: MaterialColor(_mapColor[1000]!.value, _mapColor),
  brightness: Brightness.dark,
  cupertinoOverrideTheme: const CupertinoThemeData(
    brightness: Brightness.dark,
  ),
  colorScheme: ColorScheme.fromSeed(
    seedColor: _mapColor[1000]!,
    brightness: Brightness.dark,
    onSecondary: _mapColor[50],
  ),
  textTheme: textTheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ),
  ),
  appBarTheme: AppBarTheme(
    color: _mapColor[1000],
    elevation: 0,
    iconTheme: IconThemeData(color: _mapColor[50]),
    titleTextStyle: textTheme.titleLarge!.copyWith(color: _mapColor[50]),
  ),
  tabBarTheme: TabBarTheme(
    labelColor: _mapColor[1000],
    indicator: BoxDecoration(
      border: Border(
        bottom: BorderSide(color: _mapColor[1000]!),
      ),
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: _mapColor[1000],
  ),
);
