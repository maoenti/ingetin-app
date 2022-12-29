import 'package:flutter/material.dart';
import 'package:ingetin/beranda.dart';

class AddGoalPage extends StatefulWidget {
  const AddGoalPage({Key? key}) : super(key: key);

  @override
  _AddGoalState createState() => _AddGoalState();
}

class _AddGoalState extends State<AddGoalPage> {
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
                  "Tambah Goal",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                centerTitle: true,
                backgroundColor: Color.fromARGB(248, 247, 247, 247),
                shadowColor: Colors.transparent,
                elevation: 1,
              ),
              Container(
                  margin: const EdgeInsets.all(38),
                  padding: const EdgeInsets.all(10),
                  color: Color(0xffE8E8E8),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 90,
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Nama Goal',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 11,
                                  color: Colors.grey),
                            ),
                          ),
                          Container(
                            width: 170,
                            height: 25,
                            child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(5.0)),
                              ),
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xFF000000)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
              Container(
                  height: 35,
                  width: 320,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: Text(
                      'Tambah',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF000000)),
                    ),
                    onPressed: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (BuildContext context) {
                      //   return RegisterPage();
                      // }));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF97DBAE)),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
