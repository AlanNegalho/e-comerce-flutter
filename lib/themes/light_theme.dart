import 'package:flutter/material.dart';

//Color(0xF90F98FF);
const brightness = Brightness.light;
const primarycClor = Color(0xFF00C569);
const lightColor = Color(0xFFFFFFFF);
const backgroundColor = Color(0xFFF5F5F5);

ThemeData lightTheme() {
  return ThemeData(
      brightness: brightness,
      textTheme: TextTheme(
        // bodyMedium: TextStyle(color: Colors.red),
        // displayLarge: TextStyle(fontSize: 78),
        // labelLarge: TextStyle(color: Colors.green),
        displayMedium: TextStyle(color: Colors.deepPurple),
      ),
      primaryColor: primarycClor,
      colorScheme: ColorScheme.light());
}
