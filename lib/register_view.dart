import 'package:flutter/material.dart';
import 'package:provis_register/theme.dart';
import 'package:provis_register/widgets/primary_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
            Form(
                child: Column(
              children: [
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(5)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      labelText: 'Nama Lengkap',
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 43,
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(5)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      labelText: 'Alamat Email',
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 43,
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(5)),
                  child: TextFormField(
                    obscureText: !passwordVisible,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      labelText: 'Kata Sandi',
                    ),
                  ),
                ),
              ],
            )),
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
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF000000)),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF97DBAE)),
                )),
            SizedBox(
              height: 20,
            ),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
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
