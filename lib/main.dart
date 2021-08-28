import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pico/screens/home/HomeView.dart';
import 'package:pico/screens/signup/SignupView.dart';
import 'package:pico/util/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.black, //set as per your  status bar color
          systemNavigationBarColor:
              Colors.black, //set as per your navigation bar color
          statusBarIconBrightness:
              Brightness.light, //set as per your status bar icons' color
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Pico',
            // initialRoute: "/signup",
            // routes: {
            //   '/': (context) => HomeView(),
            //   '/signup': (context) => SignupView(),
            // },
            theme: ThemeData(
              scaffoldBackgroundColor: kBackgroundColor,
              primaryColor: kPrimaryColor,
              textTheme:
                  Theme.of(context).textTheme.apply(bodyColor: kTextColor),
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: SignupView()));
  }
}
