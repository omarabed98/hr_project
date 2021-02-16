import 'package:flutter/material.dart';
import 'package:hr_app/Widgets/LeavesScreenWidget/CalendarLeavesDate.dart';


class CalendarContainer extends StatelessWidget {
  const CalendarContainer({
    Key key,
    @required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Today",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Text(
              "Welcome " + name,
              style: TextStyle(fontSize: 18, color: Colors.black),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            CalendarLeavesDate(),
          ],
        ),

      ],
    );
  }
}
