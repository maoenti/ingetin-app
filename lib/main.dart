import 'package:flutter/material.dart';
import 'package:ingetin/detail-goals.dart';
import 'package:ingetin/splash-screen.dart';
import 'package:ingetin/detail-goals.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ingetin',
      home: SplashScreenPage(),
    );
  }
}