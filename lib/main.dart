import 'package:flutter/material.dart';
import 'package:food_ui/models/data.dart';
import 'package:food_ui/screens/home_screen.dart';
import 'package:food_ui/screens/onBordingScreen.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: backgroundColor,
      ),
      routes: {
        '/': (context) => OnBoardingScreen(),
        'home': (context) => HomeScreen(),
      },
    );
  }
}
