import 'package:flutter/material.dart';

class NotificationContainer extends StatelessWidget {
  const NotificationContainer({
    Key key,
    @required this.headingText,
    @required this.bodyText,
    @required this.date,
  }) : super(key: key);

  final String headingText;
  final String bodyText;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 450,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
          border: Border.all(color: Colors.lightGreen, width: 1)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 2,
                child: Text(
                  headingText,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )),
            Padding(padding: EdgeInsets.only(top: 10)),
            Expanded(
                flex: 6,
                child: Text(
                  bodyText,
                  style: TextStyle(fontSize: 16),
                )),
            Padding(padding: EdgeInsets.only(top: 3)),
            Expanded(
                flex: 2,
                child: Text(
                  date,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                )),
          ],
        ),
      ),
    );
  }
}
