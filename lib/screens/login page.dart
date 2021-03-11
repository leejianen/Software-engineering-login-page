import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:software_engineering_login/Widgets/background-image.dart';
import 'package:software_engineering_login/Widgets/password-input.dart';
import 'package:software_engineering_login/Widgets/rounded-button.dart';
import 'package:software_engineering_login/Widgets/text-input.dart';


import '../palette.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children : [
                Container(
                  height: 150,
                  child: Center(
                    child: Text(
                    'Fit Feet',
                    style: kHeading,
                  ),
                ),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric
                      (horizontal: 20.0),
                    child: Column(
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              TextInput(
                                icon: FontAwesomeIcons.solidEnvelope,
                                hint: 'Email',
                                inputType: TextInputType.emailAddress,
                                inputAction: TextInputAction.next,
                              ),
                              PasswordInput(
                                icon: FontAwesomeIcons.lock,
                                hint: 'Password',
                                inputAction: TextInputAction.done,
                              ),
                              TextButton(onPressed: () {},
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  child: TextButton(onPressed: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                                      child: Text('Forgot Password?',
                                          style: kBodyText),
                                    ),
                                  ),
                                ))
                                ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            RoundedButton(
                              buttonText: 'Login',
                            ),
                            SizedBox(
                              height: 80,
                            ),
                            Container(
                                child: TextButton(onPressed: () {
                                  Navigator.pushNamed(context, '/home');
                                },
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                                      child: Text("Register New Account",
                                          style: kBodyText),
                                    ))
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ]
                        )
                      ],
                    ),
                  )
                )
                ],
              ),
          ),
        ),
        ),
      ],
    );
  }
}

