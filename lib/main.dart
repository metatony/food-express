import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:food_express/appBehaviour/my_behaviour.dart';
import 'package:food_express/constant/constant.dart';
import 'package:food_express/pages/splashScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Express',
      theme: ThemeData(
        primaryColor: primaryColor,
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: primaryColor,
        ),
        tabBarTheme: TabBarTheme(
          labelColor: Colors.green[300],
          unselectedLabelColor: whiteColor,
        ),
      ),
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: MyBehavior(),
          child: child ?? Container(),
        );
      },
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}
