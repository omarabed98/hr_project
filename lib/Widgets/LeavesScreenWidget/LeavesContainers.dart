import 'package:flutter/material.dart';

class LeavesContainers extends StatelessWidget {
  const LeavesContainers({
    Key key,
    @required this.sick,
    @required this.date,
    @required this.time,
    @required this.colorBorder,

  }) : super(key: key);
  final String sick;
  final String date;
  final String time;
  final Color colorBorder;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 330,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white,
      border: Border.all(color: colorBorder, width: 1)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
            flex: 1,
            child: Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.black,
                  size: 15,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  sick,
                  style: TextStyle(fontSize: 15,color: Colors.black,),
                ),
              ],
            )),
          ),
          SizedBox(height: 7),
          Expanded(
            flex: 1,
            child: Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.black,
                  size: 15,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  date,
                  style: TextStyle(fontSize: 15,color: Colors.black,),
                ),
              ],
            )),
          ),
          SizedBox(height: 7),
          Expanded(
            flex: 1,
            child: Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.watch_later_outlined,
                  color: Colors.black,
                  size: 15,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  time,
                  style: TextStyle(fontSize: 15,color: Colors.black,),
                ),
              ],
            )),
          ),
        ]),
      ),
    );
  }
}
