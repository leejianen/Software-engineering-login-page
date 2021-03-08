import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Widgets/widgets.dart';
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
                              Text('Forgot Password?',
                                style: kBodyText,
                              ),
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
                              decoration: BoxDecoration(border:
                              Border(bottom: BorderSide(color: Colors.white, width: 1),
                              )),
                                child: Text(
                                  'CreateNewAccount',
                                  style: kBodyText,
                                ),
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

