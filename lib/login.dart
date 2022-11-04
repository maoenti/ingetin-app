import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: ListView(
          children: <Widget>[
            //tulisan Ingetin
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
            //Space kosong
            SizedBox(
              height: 100,
            ),
            //Input email
            Container(
              margin: const EdgeInsets.all(5),
              height: 40,
              color: const Color(0xffFFFFFF),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  labelText: 'Alamat email',
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
            TextButton(
              // margin: const EdgeInsets.all(5),
              style: TextButton.styleFrom(
                alignment: Alignment.topRight,
              ),
              onPressed: () {
                //LUPA PASSWORD
              },
              child: Text(
                'Lupa kata sandi?',
                style: TextStyle(fontSize: 10, color: Color(0xFF000000)),
              ),
            ),
            Container(
                height: 35,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF000000)),
                  ),
                  onPressed: () {
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
                  'Belum punya akun?',
                  style: TextStyle(fontSize: 10),
                ),
                TextButton(
                  child: const Text(
                    'DAFTAR',
                    style: TextStyle(
                        fontSize: 10,
                        color: Color(0xFF3E9BDE),
                        fontWeight: FontWeight.w400),
                  ),
                  onPressed: () {
                    //DAFTAR
                  },
                )
              ],
            ),
          ],
        ));
  }
}
