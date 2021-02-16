import 'dart:ui';
import 'package:flutter/material.dart';

class ButtonContainer extends StatelessWidget {
  const ButtonContainer({
    Key key,
    @required this.buttonName,
  }) : super(key: key);

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          border: Border.all(color: Colors.white12, width: 1)),
      child: FlatButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                buttonName,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black54,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w300,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.grey,
                size: 25,
              ),
            ],
          )),
    );
  }
}
