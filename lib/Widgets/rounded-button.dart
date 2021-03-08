import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../palette.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key,
    @required this.buttonText,
  }) : super(key: key);

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color:Colors.blue,
          borderRadius: BorderRadius.circular(16)),
      child: TextButton(onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(buttonText,
              style: kBodyText),
        ),
      ),
    );
  }
}