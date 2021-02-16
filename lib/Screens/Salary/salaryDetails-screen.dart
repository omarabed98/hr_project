import 'package:flutter/material.dart';
import 'package:hr_app/Screens/Notification/notifications-screen.dart';
import 'package:hr_app/Widgets/SalaryDetailsScreenWidget/SalaryDetailsContainer.dart';


class SalaryDetails extends StatelessWidget {
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
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.of(context).pop(),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.notifications_none),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Notifications()));
                },
              )
            ],
            title: Text("Salary Details"),
            centerTitle: true,
          ),
          body: Container(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SalaryDetailsContainer(
                      month: "Month",
                      year: "Year",
                      mainSalary: "Main Salary",
                      netSalary: "Net Salary",
                      ssAmount: "S.S. Amount",
                      deduction: "Deduction",
                      raising: "Raising",
                      leavesAmount: "Leaves Amount",
                      vacationAmount: "Vacation Amount")
                ],
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
