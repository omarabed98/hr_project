import 'package:flutter/material.dart';

class LeavesContainer extends StatelessWidget {
  const LeavesContainer({
    Key key,
    @required this.numberOfHour,
    @required this.width,
    @required this.height,

  }) : super(key: key);

  final String numberOfHour;
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/Calendar.png",
                height: 40,
                width: 35,
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                "Number of Leaves",
                style: TextStyle(fontSize: 11, color: Colors.grey),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                numberOfHour,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
    );
  }
}
