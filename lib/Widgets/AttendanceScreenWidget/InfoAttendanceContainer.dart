import 'package:flutter/material.dart';

class InfoAttendanceContainer extends StatelessWidget {
  const InfoAttendanceContainer({
    Key key,
    @required this.dayName,
    @required this.month,
    @required this.year,
    @required this.fromHourToHour,
  }) : super(key: key);

  final String dayName;
  final String month;
  final String year;
  final String fromHourToHour;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 450,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.calendar_today_outlined,
                    color: Colors.grey,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    dayName,
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              )),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              flex: 1,
              child: Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.calendar_today,
                    color: Colors.grey,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    month,
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              )),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              flex: 1,
              child: Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.calendar_today,
                    color: Colors.grey,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    year,
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              )),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              flex: 1,
              child: Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.access_time,
                    color: Colors.grey,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    fromHourToHour,
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
