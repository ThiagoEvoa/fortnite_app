import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'text_theme.dart';

const _mapColor = <int, Color>{
  50: Color(0xFFede7f6),
  100: Color(0xFFd1c4e9),
  200: Color(0xFFb39ddb),
  300: Color(0xFF9575cd),
  400: Color(0xFF7e57c2),
  500: Color(0xFF673ab7),
  600: Color(0xFF5e35b1),
  700: Color(0xFF512da8),
  800: Color(0xFF4527a0),
  900: Color(0xFF311b92),
};

final appThemeLight = ThemeData(
  useMaterial3: true,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primarySwatch: MaterialColor(_mapColor[900]!.value, _mapColor),
  brightness: Brightness.light,
  cupertinoOverrideTheme: const CupertinoThemeData(
    brightness: Brightness.light,
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
    color: _mapColor[900],
    elevation: 0,
    iconTheme: IconThemeData(color: _mapColor[50]),
    titleTextStyle: textTheme.titleLarge!.copyWith(color: _mapColor[50]),
  ),
  tabBarTheme: TabBarTheme(
    labelColor: _mapColor[900],
    indicator: BoxDecoration(
      border: Border(
        bottom: BorderSide(color: _mapColor[900]!),
      ),
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: _mapColor[900],
  ),
);
