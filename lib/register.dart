import 'package:flutter/material.dart';
import 'package:ingetin/theme2.dart';
import 'package:ingetin/widgets/primary_button.dart';

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
      backgroundColor: Color(0xffF8F7F7),
      body: Center(
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '!nget',
                        style: TextStyle(
                          // fontFamily: FontPoppins,
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF97DBAE)),
                      ),
                      Text(
                        'in.',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF000000)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 112,
                ),
                Form(
                    child: Column(
                      children: [
                        Container(
                          height: 43,
                          decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(5)),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: 'Nama Lengkap',
                                hintStyle: heading6.copyWith(
                                  color: Color(0xffA79B9B),
                                ),
                                border:
                                OutlineInputBorder(borderSide: BorderSide.none)),
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
                                hintText: 'Alamat email',
                                hintStyle: heading6.copyWith(
                                  color: Color(0xffA79B9B),
                                ),
                                border:
                                OutlineInputBorder(borderSide: BorderSide.none)),
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
                                hintText: 'Kata sandi',
                                hintStyle: heading6.copyWith(
                                  color: Color(0xffA79B9B),
                                ),
                                border:
                                OutlineInputBorder(borderSide: BorderSide.none)),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                CustomPrimaryButton(
                  buttonColor: Color(0xff97DBAE),
                  textValue: 'Registrasi',
                  textColor: Color(0xff000000),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sudah punya akun? ',
                      style: regular9pt.copyWith(color: Color(0xff302C2C)),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'LOGIN',
                        style: regular9pt.copyWith(color: primaryBlue),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
