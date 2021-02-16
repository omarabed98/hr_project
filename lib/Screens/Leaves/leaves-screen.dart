import 'package:flutter/material.dart';
import 'package:hr_app/Screens/Notification/notifications-screen.dart';
import 'package:hr_app/Screens/Settings/settings-screen.dart';
import 'package:hr_app/Widgets/DashboardScreenWidget/LeavesContainer.dart';
import 'package:hr_app/Widgets/DashboardScreenWidget/VacationContainer.dart';
import 'package:hr_app/Widgets/LeavesScreenWidget/CalendarContainer.dart';
import 'package:hr_app/Widgets/LeavesScreenWidget/CalendarScrollDateAndDay.dart';
import 'package:hr_app/Widgets/LeavesScreenWidget/LeavesContainers.dart';


class Leaves extends StatefulWidget {
  @override
  _Leaves createState() => _Leaves();
}

class _Leaves extends State<Leaves> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        elevation: 0,
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
        title: Text("Leaves"),
        centerTitle: true,
      ),
      body: Container(
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
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LeavesContainer(
                          numberOfHour: "5 Hours",
                          width: 130.0,
                          height: 130.0,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        VacationContainer(
                          numberOfHour: "5/14 Days",
                          width: 130.0,
                          height: 130.0,
                        )
                      ],
                    ))),
            Expanded(
              flex: 7,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 30),
                        child: CalendarContainer(
                          name: "Omar Abed",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 10),
                        child: CalendarScroll(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: LeavesContainers(
                          sick: "sick",
                          date: "26/9/2020",
                          time: "12:00 PM to 3:00 AM",
                          colorBorder: Colors.lightGreen,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: LeavesContainers(
                          sick: "sick",
                          date: "26/9/2020",
                          time: "12:00 PM to 3:00 AM",
                          colorBorder: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: LeavesContainers(
                          sick: "sick",
                          date: "26/9/2020",
                          time: "12:00 PM to 3:00 AM",
                          colorBorder: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: LeavesContainers(
                          sick: "sick",
                          date: "26/9/2020",
                          time: "12:00 PM to 3:00 AM",
                          colorBorder: Colors.yellow,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
