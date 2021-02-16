import 'package:flutter/material.dart';
import 'package:hr_app/Screens/AppBar_Home.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Container(
            height: size.height * 0.07,
            width: size.width * 0.4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(
                  color: Colors.blue,
                  width: 1,
                )),
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AppBarHome()));
              },
              child: Text(
                "Submit",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 22),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
