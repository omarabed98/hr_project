import 'dart:core';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hr_app/Screens/Notification/notifications-screen.dart';
import 'package:hr_app/Screens/Settings/settings-screen.dart';
import 'package:hr_app/Widgets/AttendanceScreenWidget/InfoAttendanceContainer.dart';
import 'package:table_calendar/table_calendar.dart';

class Attendance extends StatefulWidget {
  @override
  _Attendance createState() => _Attendance();
}

class _Attendance extends State<Attendance> {
  CalendarController _calendarController;
  Map<DateTime, List<dynamic>> _events = {};

  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  Widget calendar() {
    return Container(
        margin: EdgeInsets.only(top: 10, bottom: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: TableCalendar(
          calendarStyle: CalendarStyle(
            canEventMarkersOverflow: true,
            markersColor: Colors.black,
            weekdayStyle: TextStyle(color: Colors.black),
            todayColor: Colors.white,
            todayStyle: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
            selectedColor: Colors.grey[400],
            outsideWeekendStyle: TextStyle(color: Colors.grey),
            outsideStyle: TextStyle(color: Colors.grey),
            weekendStyle: TextStyle(color: Colors.black),
            renderDaysOfWeek: true,
          ),
          calendarController: _calendarController,
          events: _events,
          headerStyle: HeaderStyle(
            leftChevronIcon:
                Icon(Icons.arrow_back_ios, size: 15, color: Colors.grey),
            rightChevronIcon:
                Icon(Icons.arrow_forward_ios, size: 15, color: Colors.grey),
            titleTextStyle:
                GoogleFonts.montserrat(color: Colors.black, fontSize: 16),
            formatButtonDecoration: BoxDecoration(
              color: Colors.white54,
              borderRadius: BorderRadius.circular(20),
            ),
            formatButtonTextStyle: GoogleFonts.montserrat(
                color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
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
        ),
        leading: IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Settings()));
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Notifications()));
            },
          )
        ],
        title: Text("Attendance"),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              calendar(),
              InfoAttendanceContainer(
                  dayName: "Day Name",
                  month: "Month",
                  year: "Year",
                  fromHourToHour: "From Hour To Hour"),
            ],
          ),
        ),
      ),
    );
  }
}
