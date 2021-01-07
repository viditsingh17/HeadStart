import 'package:flutter/material.dart';
import 'package:healthApp/configuration.dart';
import 'package:healthApp/screens/splash_screen.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: SplashScreen(),
      theme: ThemeData(
        fontFamily: 'Circular',
        primaryColor: primaryColor,
        cursorColor: primaryColor,
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
