import 'package:flutter/material.dart';

import '../colors.dart';

enum AppTheme {
  light("Light"),
  dark('Dark');

  const AppTheme(this.name);
  final String name;
}

final appthemedata = {
  AppTheme.light: ThemeData(
    
    brightness: Brightness.light,
    appBarTheme:const AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(color: Colors.black),

    ) ,
    scaffoldBackgroundColor:Colorsmanager.whitecolor,
  ),
  AppTheme.dark: ThemeData(
   brightness: Brightness.dark,
scaffoldBackgroundColor: Colorsmanager.blackcolor,
       appBarTheme:const AppBarTheme(
      backgroundColor: Colors.black,
      titleTextStyle: TextStyle(color: Colors.red),

    ) ,
  )
};