

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:software_engineering_login/screens/RegisterPage.dart';
import 'package:software_engineering_login/screens/login%20page.dart';
import 'package:software_engineering_login/screens/NavScreen.dart';
import 'package:software_engineering_login/screens/AccountUpdate.dart';
import 'package:software_engineering_login/screens/EmailUpdate.dart';
import 'package:software_engineering_login/screens/PasswordUpdate.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter LoginPage',
      theme: ThemeData(
        textTheme: GoogleFonts.josefinSansTextTheme(Theme.of(context).
        textTheme),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
        routes: {
          '/': (context) => LoginPage(),
          '/register': (context) => RegisterPage(),
          '/home': (context) => NavigationPage(),
          '/update': (context) => AccountUpdatePage(),
          '/EmailUpdate': (context) => EmailUpdatePage(),
          '/PwUpdate': (context) => PasswordUpdatePage(),
        }
    );
  }
}

