import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:software_engineering_login/Widgets/background-image.dart';
import '../palette.dart';

class EmailUpdatePage extends StatefulWidget {
  @override
  _EmailUpdatePageState createState() => _EmailUpdatePageState();
}

class _EmailUpdatePageState extends State<EmailUpdatePage> {


  var _formKey = GlobalKey<FormState>();
  List test = [false, "Fuck you learn to code"];

  Future<void> emailResultDialog(BuildContext context, [bool pass, String msg]) async {
    if(pass){
      return await showDialog(context: context,
          builder: (context){
            return AlertDialog(
              content: Form(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                        child: Row(
                          children: [
                            Text('Email updated',
                                style: kBodyTextBlack),
                          ],
                        ),
                      ),
                      //Password input
                    ],
                  )),
              actions: <Widget>[
                TextButton(
                    child: Text('Okay'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }
                )],
            );
          });
    }
    else{
      return await showDialog(context: context,
          builder: (context){
            return AlertDialog(
              content: Form(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                        child: Row(
                          children: [
                            Text(msg,
                                style: kBodyTextBlack),
                          ],
                        ),
                      ),
                      //Password input
                    ],
                  )),
              actions: <Widget>[
                TextButton(
                    child: Text('Okay'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }
                )],
            );
          });
    }
  }

  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children : [
                    Container(
                      height: 150,
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              'Update',
                              style: kHeading,
                            ),
                          ),
                          Center(
                            child: Text(
                              'E-mail',
                              style: kHeading,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric
                            (horizontal: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                                    child: Row(
                                      children: [
                                        Text('Enter New E-mail:',
                                            style: kBodyText),
                                      ],
                                    ),
                                  ),

                                  //E-mail input
                                  Container(
                                    width: 370,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white, width: 1),
                                      color: Colors.grey[600].withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(16),),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 14.0),
                                      child: SizedBox(
                                        child: TextFormField(
                                          validator: (String value){
                                            if(value.isEmpty)
                                              return "   Enter a value";
                                            else
                                              return null;
                                          },
                                          controller:emailController,
                                          decoration: InputDecoration(
                                            contentPadding:
                                            const EdgeInsets.symmetric
                                              (vertical: 10),
                                            errorStyle: errorText,
                                            hintStyle: kBodyText,
                                          ),
                                          style: kBodyText,
                                          keyboardType: TextInputType.emailAddress,
                                          textInputAction: TextInputAction.done,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                  children: [
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color:Colors.blue,
                                          borderRadius: BorderRadius.circular(16)),
                                      child: TextButton(onPressed: () {
                                        setState(() async {
                                          if (_formKey.currentState.validate()) {
                                            await emailResultDialog(context, test[0], test[1]);
                                            return Navigator.pushNamed(context, '/home');
                                          }
                                          // return Navigator.pushNamed(context, '/home');
                                        });
                                      },
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                                          child: Text('Update',
                                              style: kBodyText),
                                        ),
                                      ),
                                    ),
                                    // RoundedButton(
                                    //   buttonText: 'Register',
                                    // ),
                                    SizedBox(
                                      height: 80,
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
        ),
      ],
    );
  }
}
