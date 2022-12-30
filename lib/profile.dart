import 'package:flutter/material.dart';
import 'package:ingetin/login.dart';
import 'package:ingetin/beranda.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                leading: BackButton(
                    color: Colors.grey, onPressed: () => _goToBeranda()
                ),
                backgroundColor: Color.fromARGB(248, 247, 247, 247),
                shadowColor: Colors.transparent,
                elevation: 1,
              ),
              Container(
                padding: EdgeInsets.all(20),
                // child: CircleAvatar(
                //   radius: 50.0,
                //   backgroundImage: AssetImage('assets/images/keisya.png'),
                // ),
                child: Image.asset('assets/images/user.png', width: 100, height: 100, scale: 0.5,),
              ),
              Text(
                'Tania Fitriani',
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: 'Poppins',
                  color: Colors.black,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(38),

                child: Table(
                  children: [
                    TableRow(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide())
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 11,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide())
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'tania@upi.edu',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 11,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide())
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Password',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 11,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide())
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '********',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 11,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide())
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Goals Tercapai',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 11,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide())
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '20',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 11,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  height: 35,
                  width:double.infinity,
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: ElevatedButton(
                    child: Text(
                      'Logout',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF000000)),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Login()));
                      // print(emailController.text);
                      // print(passwordController.text);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF97DBAE)),
                  )),

              // SizedBox(
              //   child: Divider(
              //     color: Colors.black,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}





