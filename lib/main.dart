import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:icon_forest/icon_forest.dart';
// ignore: unused_import
import 'package:trck/IntroScreen.dart';
// ignore: unused_import
import 'package:trck/Screens/HomeScreens/Compte.dart';
// ignore: unused_import
import 'package:trck/Screens/SignIn/Phone.dart';
// ignore: unused_import
import 'package:trck/navbar.dart';
// ignore: unused_import
import 'package:trck/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Asap'),
      home: const RegisterScreen(),
    );
  }
}
