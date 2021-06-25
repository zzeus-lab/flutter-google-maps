import 'package:flutter/material.dart';
import 'package:pico/pages/Home/home.dart';
import 'package:pico/util/themeColors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pico',
      theme: ThemeData(
        primarySwatch: ThemeColors.primary,
      ),
      home: Home(),
    );
  }
}
