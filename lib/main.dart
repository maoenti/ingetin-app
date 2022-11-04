import 'package:flutter/material.dart';
import 'package:coba_uts/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          canvasColor: const Color(0xFFF8F7F7), fontFamily: 'FontPoppins'),
      home: Scaffold(
        body: const Login(),
      ),
    );
  }
}
