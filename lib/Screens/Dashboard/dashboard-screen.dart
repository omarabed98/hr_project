import 'package:flutter/material.dart';
import 'package:hr_app/Screens/Notification/notifications-screen.dart';
import 'package:hr_app/Screens/Settings/settings-screen.dart';
import 'package:hr_app/Widgets/DashboardScreenWidget/ChartContainer.dart';
import 'package:hr_app/Widgets/DashboardScreenWidget/CheckInContainer.dart';
import 'package:hr_app/Widgets/DashboardScreenWidget/CheckOutContainer.dart';
import 'package:hr_app/Widgets/DashboardScreenWidget/LeavesContainer.dart';
import 'package:hr_app/Widgets/DashboardScreenWidget/VacationContainer.dart';


class Dashboard extends StatefulWidget {
  @override
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
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
        elevation: 0,
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
        title: Text("Dashboard"),
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
                flex: 2,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 50),
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                    "assets/images/unknown-person.jpg"),
                                radius: 45,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(top: 20, right: 50),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          child: Text(
                                            "Lucy Russel",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                            textDirection: TextDirection.rtl,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Sr. UI/UX Designer - LA-299",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.circle,
                                          color: Colors.lightGreen,
                                          size: 10,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Active",
                                          style: TextStyle(
                                              color: Colors.lightGreen,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ],
                                ))
                          ],
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 37,
                            ),
                            CheckInContainer(
                              time: "06:00 PM",
                              width: 150.0,
                              height: 130.0,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            CheckOutContainer(
                              time: "09:00 AM",
                              width: 150.0,
                              height: 130.0,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 37,
                            ),
                            LeavesContainer(
                              numberOfHour: "5 Hours",
                              width: 150.0,
                              height: 130.0,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            VacationContainer(
                              numberOfHour: "5/14 Days",
                              width: 150.0,
                              height: 130.0,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 37,
                            ),
                            ChartContainer(
                              perCentFromYourTask: "24% From your task",
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 30,
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
