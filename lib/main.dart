import 'package:ecomerce/themes/light_theme.dart';
import 'package:ecomerce/themes/dark.theme.dart';
import 'package:ecomerce/themes/yelowdar_theme.dart';

import 'package:flutter/material.dart';

import 'pages/tabs_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: darkTheme(),
      home: DefaultTabController(
        length: 3,
        child: TabsPage(),
      ),
    );
  }
}
