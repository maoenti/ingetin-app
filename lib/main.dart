import 'package:flutter/material.dart';
import 'package:provis_register/register_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ingetin',
      theme: ThemeData(fontFamily: 'FontPoppins'),
      home: RegisterPage(),
    );
  }
}
