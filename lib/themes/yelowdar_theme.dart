import 'package:flutter/material.dart';

//Color(0xF90F98FF);
const brightness = Brightness.dark;
const primarycClor = Color(0xFFFFCC00);
const lightColor = Color(0xFFFFFFFF);
const backgroundColor = Color(0xFFF5F5F5);

ThemeData darkYellowTheme() {
  return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColor: primarycClor,
      brightness: brightness,
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
          .copyWith(secondary: Colors.blueAccent, brightness: Brightness.dark)
          .copyWith(secondary: Colors.black12)
          .copyWith(
            onPrimary: Colors.black12,
          ));
}
