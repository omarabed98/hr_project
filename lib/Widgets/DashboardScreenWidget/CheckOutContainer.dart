import 'package:flutter/material.dart';

class CheckOutContainer extends StatelessWidget {
  const CheckOutContainer({
    Key key,
    @required this.time,
    @required this.width,
    @required this.height,

  }) : super(key: key);

  final String time;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: FlatButton(
          onPressed: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/CheckIn.png",
                height: 40,
                width: 35,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "CheckOut",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                time,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
