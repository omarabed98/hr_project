import 'package:flutter/material.dart';
import 'package:hr_app/Screens/Login/login-screen.dart';
import 'package:hr_app/palette.dart';

class Button extends StatelessWidget {
  const Button({
    Key key,
    @required this.buttonName,
  }) : super(key: key);

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                colors: [
                  Colors.blueGrey,
                  Colors.blue,
                  Colors.lightBlue,
                  Colors.lightBlueAccent,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              )),
      child: FlatButton(
        onPressed: () { Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => LoginScreen()));},
        child: Text(
          buttonName,
          style: kBodyText.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
