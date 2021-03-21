import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:software_engineering_login/Widgets/background-image.dart';
import 'package:software_engineering_login/Widgets/date-of-birth.dart';
import 'package:software_engineering_login/Widgets/rounded-button.dart';
import 'package:software_engineering_login/Widgets/weight-input.dart';
import '../palette.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final cfmPasswordController = TextEditingController();
  final passwordController = TextEditingController();
  final weightController = TextEditingController();

  String genderChoose;

  List genderList = [
    "M","F"
  ];

  DateTime _date = DateTime.now();

  Future<Null> _selectDate (BuildContext context) async{
    DateTime _datePicker = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(1947),
      lastDate: DateTime(2030),
    );

    if(_datePicker != null && _datePicker != _date){
      setState(() {
        _date = _datePicker;
        print(
          _date.toString(),
        );
      });
    }
  }

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
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            'Account',
                            style: kHeading,
                          ),
                        ),
                        Center(
                          child: Text(
                            'Registration',
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
                            Text('Please fill in this form:',
                                style: kBodyText),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Text('Gender:',
                                        style: kBodyText),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                                      child: Container(
                                        padding: EdgeInsets.only(left: 16, right: 16),
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Colors.white, width: 1),
                                            color: Colors.grey[600].withOpacity(0.5),
                                            borderRadius: BorderRadius.circular(15)
                                        ),
                                        child: DropdownButton(
                                          hint: Text("Select Gender",
                                          style: kBodyText),
                                          dropdownColor: Colors.black,
                                          icon: Icon(Icons.arrow_drop_down),
                                          iconSize:44,
                                          iconEnabledColor: Colors.white,
                                          style: kBodyText,
                                          value: genderChoose,
                                          onChanged: (newValue) {
                                            print(newValue);
                                            setState(() {
                                              genderChoose = newValue;
                                            });
                                          },
                                          items: genderList.map((valueItem) {
                                            return DropdownMenuItem(
                                              value: valueItem,
                                              child: Text(valueItem),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Weight:    ',
                                        style: kBodyText),
                                    Container(
                                        width: 220,
                                        decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white, width: 1),
                                        color: Colors.grey[600].withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(16),),
                                          child: SizedBox(
                                            child: TextField(
                                              controller: weightController,
                                              decoration: InputDecoration(
                                              contentPadding:
                                              const EdgeInsets.symmetric
                                              (vertical: 10),
                                              border: InputBorder.none,
                                              prefixIcon: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal:20.0),
                                                ),
                                              hintStyle: kBodyText,
                                                ),
                                              style: kBodyText,
                                              keyboardType: TextInputType.number,
                                              textInputAction: TextInputAction.next,
                                            ),
                                          ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                                      child: Row(
                                        children: [
                                          Text('Date Of Birth:      ',
                                              style: kBodyText),
                                        ],
                                      ),
                                    ),
                                    RaisedButton(
                                      onPressed: (){
                                        setState(() {
                                          _selectDate(context);
                                        });
                                      },
                                      color: Color(0xFFC41A3B),
                                      child: Text("Date Picker", style: TextStyle(color: Colors.white),),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                                  child: Row(
                                    children: [
                                      Text('Enter Your Username:',
                                          style: kBodyText),
                                    ],
                                  ),
                                ),

                              //username input
                                Container(
                                width: 370,
                                decoration: BoxDecoration(
                                border: Border.all(color: Colors.white, width: 1),
                                color: Colors.grey[600].withOpacity(0.5),
                                borderRadius: BorderRadius.circular(16),),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                                     child: SizedBox(
                                      child: TextField(
                                        controller: usernameController,
                                        decoration: InputDecoration(
                                        contentPadding:
                                        const EdgeInsets.symmetric
                                        (vertical: 10),
                                        border: InputBorder.none,
                                        hintStyle: kBodyText,
                                        ),
                                        style: kBodyText,
                                        keyboardType: TextInputType.text,
                                        textInputAction: TextInputAction.done,
                                        ),
                                      ),
                                  ),
                                  ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                                  child: Row(
                                    children: [
                                      Text('Enter Your E-mail:',
                                          style: kBodyText),
                                    ],
                                  ),
                                ),

                                //username input
                                Container(
                                  width: 370,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white, width: 1),
                                    color: Colors.grey[600].withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(16),),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                                    child: SizedBox(
                                      child: TextField(
                                        controller:emailController,
                                        decoration: InputDecoration(
                                          contentPadding:
                                          const EdgeInsets.symmetric
                                            (vertical: 10),
                                          border: InputBorder.none,
                                          hintStyle: kBodyText,
                                        ),
                                        style: kBodyText,
                                        keyboardType: TextInputType.emailAddress,
                                        textInputAction: TextInputAction.done,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                                  child: Row(
                                    children: [
                                      Text('Enter Your Password:',
                                          style: kBodyText),
                                    ],
                                  ),
                                ),

                                //username input
                                Container(
                                  width: 370,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white, width: 1),
                                    color: Colors.grey[600].withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(16),),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                                    child: SizedBox(
                                      child: TextField(
                                        controller: passwordController,
                                        decoration: InputDecoration(
                                          contentPadding:
                                          const EdgeInsets.symmetric
                                            (vertical: 10),
                                          border: InputBorder.none,
                                          hintStyle: kBodyText,
                                        ),
                                        obscureText: true,
                                        style: kBodyText,
                                        keyboardType: TextInputType.text,
                                        textInputAction: TextInputAction.done,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                                  child: Row(
                                    children: [
                                      Text('Re-Enter Your Password',
                                          style: kBodyText),
                                    ],
                                  ),
                                ),

                                //username input
                                Container(
                                  width: 370,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white, width: 1),
                                    color: Colors.grey[600].withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(16),),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                                    child: SizedBox(
                                      child: TextField(
                                        controller: cfmPasswordController,
                                        decoration: InputDecoration(
                                          contentPadding:
                                          const EdgeInsets.symmetric
                                            (vertical: 10),
                                          border: InputBorder.none,
                                          hintStyle: kBodyText,
                                        ),
                                        obscureText: true,
                                        style: kBodyText,
                                        keyboardType: TextInputType.text,
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
                                  RoundedButton(
                                    buttonText: 'Register',
                                  ),
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
      ],
    );
  }
}
