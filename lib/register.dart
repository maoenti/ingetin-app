import 'package:flutter/material.dart';
import 'package:ingetin/login.dart';
import 'package:ingetin/theme2.dart';
import 'package:ingetin/widgets/primary_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool passwordVisible = false;
  bool passwordConfirmVisible = false;
  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: ListView(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '!nget',
                        style: TextStyle(
                          // fontFamily: FontPoppins,
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF97DBAE)),
                      ),
                      Text(
                        'in.',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF000000)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
            Container(
              margin: const EdgeInsets.all(5),
              height: 40,
              color: const Color(0xffFFFFFF),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  labelText: 'Nama Lengkap',
                ),
                style: TextStyle(fontSize: 14, color: Color(0xFF000000)),
              ),
            ),
                Container(
                  margin: const EdgeInsets.all(5),
                  height: 40,
                  color: const Color(0xffFFFFFF),
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      labelText: 'Alamat Email',
                    ),
                    style: TextStyle(fontSize: 14, color: Color(0xFF000000)),
                  ),
                ),
            //Input password
            Container(
              // padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              margin: const EdgeInsets.all(5),
              height: 40,
              color: const Color(0xffFFFFFF),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  labelText: 'Kata sandi',
                ),
                style: TextStyle(fontSize: 14, color: Color(0xFF000000)),
              ),
            ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 35,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      child: Text(
                        'Registrasi',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF000000)),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()));
                        // print(emailController.text);
                        // print(passwordController.text);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF97DBAE)),
                    )),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Sudah punya akun?',
                      style: TextStyle(fontSize: 10),
                    ),
                    TextButton(
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(
                            fontSize: 10,
                            color: Color(0xFF3E9BDE),
                            fontWeight: FontWeight.w400),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Login()));
                      },
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
