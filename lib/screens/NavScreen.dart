import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:software_engineering_login/assets/db_icons.dart';
import '../palette.dart';

class NavigationPage extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: size.width,
              height: 80,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(size.width, 80),
                    painter: BNBCustomPainter(),
                  ),
                  Column(
                    children: [
                      Center(
                        heightFactor: 0.6,
                        child: FloatingActionButton(onPressed: (){},
                        backgroundColor: Colors.orange,
                          child: Column(
                            children: [
                              Icon(NavigationScreen.changemoderun,
                              size: 35.0
                              ),
                              Text("Begin",
                              style: navScreenWhite),
                            ],
                          ),elevation: 0.1,),
                      ),
                    ],
                  ),
                  Container(
                    width: size.width,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:[
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 35.0,
                              child: IconButton(
                                  icon: Icon(NavigationScreen.account_history,),
                                  onPressed: (){
                                  }),
                            ),
                            Text('Account',
                                style: navScreen),
                            Text('History',
                                style: navScreen),
                          ],
                        ),
                        // Column(
                        //   mainAxisSize: MainAxisSize.min,
                        //   children: [
                        //     SizedBox(
                        //       height: 35.0,
                        //       child: IconButton(
                        //           icon: Icon(NavigationScreen.changedistance,),
                        //           onPressed: (){}),
                        //     ),
                        //     Text('Change',
                        //         style: navScreen),
                        //     Text('Distance',
                        //         style: navScreen),
                        //   ],
                        // ),
                        Container(width: size.width*0.20),
                        // Column(
                        //   mainAxisSize: MainAxisSize.min,
                        //   children: [
                        //     SizedBox(
                        //       height: 35.0,
                        //       child: IconButton(
                        //           icon: Icon(NavigationScreen.changemoderun,
                        //           size: 40.0),
                        //           onPressed: (){}),
                        //     ),
                        //     Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                        //     Text('Change',
                        //         style: navScreen),
                        //     Text('Mode',
                        //         style: navScreen),
                        //   ],
                        // ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 35.0,
                              child: IconButton(
                                  icon: Icon(NavigationScreen.account,),
                                  onPressed: (){
                                    _accountDetailsModalBottomSheet(context);
                                  }),
                            ),
                            Text('Account',
                                style: navScreen),
                          ],
                        ),


                      ]
                    )
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
  void _accountDetailsModalBottomSheet(context){
    showModalBottomSheet(context: context, builder: (BuildContext bc) {
      return Container(
        height: MediaQuery.of(context).size.height * .70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Account History", style: kHeadTextBlack),
                  Padding(padding: EdgeInsets.symmetric(vertical: 12.0)),
                  Text("Date of Birth:", style: kBodyTextBlack),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
                  Text("E-mail:", style: kBodyTextBlack),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
                  Text("Weight:", style: kBodyTextBlack),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
                  Text("Password:", style: kBodyTextBlack),
                  Image(
                          image: AssetImage('assets/Fitfeet.png'),
                          fit: BoxFit.cover,
                        ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  IconButton(
                    icon: Icon(Icons.cancel, color: Colors.black, size: 30,),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.create, color: Colors.black, size: 40,),
                    onPressed: () {
                      Navigator.pushNamed(context, '/update');
                    },
                  ),
                  Text("Edit"),
                  IconButton(
                    icon: Icon(Icons.logout, color: Colors.black, size: 40,),
                    onPressed: () {},
                  ),
                  Text("Log \nOut"),
                  ]),
                    ]),
              ),
          );
    });
  }
}

class BNBCustomPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.white..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 20);
    path.quadraticBezierTo(size.width*0.20, 0, size.width*0.35, 0);
    path.quadraticBezierTo(size.width*0.40, 0, size.width*0.40, 20);
    path.arcToPoint(Offset(size.width*0.60,20),
      radius: Radius.circular(10.0), clockwise: false);
    path.quadraticBezierTo(size.width*0.60, 0, size.width*0.65, 0);
    path.quadraticBezierTo(size.width*0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}

