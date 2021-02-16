import 'package:flutter/material.dart';
import 'package:hr_app/Screens/Notification/notifications-screen.dart';
import 'package:hr_app/Screens/Settings/settings-screen.dart';
import 'package:hr_app/Widgets/SalaryScreenWidget/SalaryContainer.dart';


class Salaries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          child: Scaffold(
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
          title: Text("Salaries"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SalaryContainer(
                      month: "Month",
                      year: "Year",
                      mainSalary: "Main Salary",
                      netSalary: "Net Salary"),
                  SizedBox(
                    height: 15,
                  ),
                  SalaryContainer(
                      month: "Month",
                      year: "Year",
                      mainSalary: "Main Salary",
                      netSalary: "Net Salary"),
                  SizedBox(
                    height: 15,
                  ),
                  SalaryContainer(
                      month: "Month",
                      year: "Year",
                      mainSalary: "Main Salary",
                      netSalary: "Net Salary"),
                  SizedBox(
                    height: 15,
                  ),
                  SalaryContainer(
                      month: "Month",
                      year: "Year",
                      mainSalary: "Main Salary",
                      netSalary: "Net Salary"),
                  SizedBox(
                    height: 15,
                  ),
                  SalaryContainer(
                      month: "Month",
                      year: "Year",
                      mainSalary: "Main Salary",
                      netSalary: "Net Salary"),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
        ),
      )),
    ]);
  }
}
