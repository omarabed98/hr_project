import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Note extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 7.0),
        child: Container(
          height: size.height * 0.1,
          width: size.width * 0.9,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black12,
              width: 1,
            ),
          ),
          child: Container(
            margin: EdgeInsets.only(left: 10,right: 10),
            child: TextField(
                style: TextStyle(
                  fontSize: 20,
                ),
                keyboardType: TextInputType.text,
                minLines: 1,
                maxLines: 5,
                decoration: InputDecoration(border: InputBorder.none)),
          ),
        ));
  }
}
