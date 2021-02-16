import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';


class CalendarScroll extends StatefulWidget {
  @override
  _CalendarScroll createState() => _CalendarScroll();
}

class _CalendarScroll extends State<CalendarScroll> {
  CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TableCalendar(
            initialCalendarFormat: CalendarFormat.week,
            calendarStyle: CalendarStyle(
                todayColor: Colors.orange,
                selectedColor: Theme.of(context).primaryColor,
                todayStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black)),
            headerVisible: false,
            startingDayOfWeek: StartingDayOfWeek.sunday,
            builders: CalendarBuilders(
              selectedDayBuilder: (context, date, events) => Container(
                  margin: const EdgeInsets.all(4.0),
                  alignment: Alignment.center,
                  child: Text(
                    date.day.toString(),
                    style: TextStyle(color: Colors.green),
                  )),
              todayDayBuilder: (context, date, events) => Container(
                  margin: const EdgeInsets.all(4.0),
                  alignment: Alignment.center,
                  child: Text(
                    date.day.toString(),
                    style: TextStyle(color: Colors.green),
                  )),
            ),
            calendarController: _controller,
          )
        ],
      ),
    );
  }
}