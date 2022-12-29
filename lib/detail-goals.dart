import 'package:flutter/material.dart';
import 'package:ingetin/beranda.dart';

class CustomColor {
  static const Color light_grey = Color(0xFFCCCCCC);
}

class CustomTextStyle {
  static const TextStyle captionText = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 12,
    color: Color(0xFFA79B9B),
  );

  static const TextStyle whiteCaptionText = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 12,
    color: Colors.white,
  );

  static const TextStyle blackCaptionText = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 12,
    color: Colors.black,
  );

  static const TextStyle whiteText = TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12,
      color: Colors.white,
      fontWeight: FontWeight.w800
  );
}

class DetailGoalsPage extends StatefulWidget {
  const DetailGoalsPage({Key? key}) : super(key: key);

  @override
  _DetailGoalsState createState() => _DetailGoalsState();
}

class _DetailGoalsState extends State<DetailGoalsPage> {
  late AnimationController controller;

  List<int> jumlah_container = [1,2,3,4];
  bool isChecked = false;
  double percent = 0.0;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void _goToBeranda() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => BerandaPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(248, 247, 247, 247),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AppBar(
                leading: BackButton(color: Colors.grey, onPressed: () => _goToBeranda()),
                title: Text(
                  "Detail Goals",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                centerTitle: true,
                backgroundColor: Color.fromARGB(248, 247, 247, 247),
                shadowColor: Colors.transparent,
                elevation: 1,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xFF97DBAE),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("Be a Valorant Champ", style: TextStyle(
                        color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold), textAlign: TextAlign.left),
                    Text("2/3 Task", style: TextStyle(
                        color: Colors.white, fontSize: 14), textAlign: TextAlign.left)
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 10,left: 20, right: 20),
                  child: ListView(
                      padding: EdgeInsets.only(top:10),
                      scrollDirection: Axis.vertical,
                      children: [
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(bottom: 25),
                          padding: EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0,-10),
                                    blurRadius: 0,
                                    color: Color(0xFF97DBAE)
                                )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: Column(
                              children: [
                                for (var i in jumlah_container)
                                  Container(
                                      padding: EdgeInsets.only(bottom: 7, top: 7),
                                      child: Row(
                                          children: [
                                            Checkbox(
                                                activeColor: Theme.of(context).primaryColor,
                                                checkColor: Colors.black,
                                                value: isChecked,
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    isChecked = value!;
                                                  });
                                                }
                                            ),
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        ('Task ' + i.toString()),
                                                        textAlign: TextAlign.start,
                                                        style: Theme.of(context).textTheme.headline5,
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        ('Rincian Task ' + i.toString()),
                                                        textAlign: TextAlign.start,
                                                        style: Theme.of(context).textTheme.bodyText1,
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        ('22:0' + i.toString()),
                                                        textAlign: TextAlign.start,
                                                        style: CustomTextStyle.captionText,
                                                      ),
                                                      Text(
                                                        (' 4 November'),
                                                        textAlign: TextAlign.start,
                                                        style: CustomTextStyle.captionText,
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            )
                                          ]
                                      )
                                  ),
                              ]
                          ),
                        ),
                      ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void switchChanged(bool value) {}
}
