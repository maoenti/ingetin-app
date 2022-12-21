import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ingetin/beranda.dart';
import 'package:ingetin/login.dart';
import 'package:ingetin/register.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({ Key? key }) : super(key: key);
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}
class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    openSplashScreen();
  }
  openSplashScreen() async {

    var durasiSplash = const Duration(seconds: 2);
    return Timer(durasiSplash, () {

      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) {
            return Login();
          })
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(248, 247, 247, 247),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Image.asset("assets/images/ingetin.png"),
        ),
      ),
    );
  }
}
