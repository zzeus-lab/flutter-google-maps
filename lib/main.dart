import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pico/screens/Home/home.dart';
import 'package:pico/util/themeColors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor:
              Colors.black, //set as per your  status bar color
          systemNavigationBarColor:
              Colors.black, //set as per your navigation bar color
          statusBarIconBrightness:
              Brightness.light, //set as per your status bar icons' color
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Pico',
          theme: ThemeData(
            primarySwatch: ThemeColors.primary,
          ),
          home: Home(),
        ));
  }
}
