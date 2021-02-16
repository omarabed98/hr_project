import 'package:flutter/material.dart';
import 'package:hr_app/Screens/Salary/salaryDetails-screen.dart';

class SalaryContainer extends StatelessWidget {
  const SalaryContainer({
    Key key,
    @required this.month,
    @required this.year,
    @required this.mainSalary,
    @required this.netSalary,

  }) : super(key: key);

  final String month;
  final String year;
  final String mainSalary;
  final String netSalary;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 140,
        width: 450,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white),
        child: FlatButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SalaryDetails()));
          },
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
                        Icons.account_balance_wallet,
                        color: Colors.grey,
                        size: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        mainSalary,
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
                        Icons.account_balance_wallet_outlined,
                        color: Colors.grey,
                        size: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        netSalary,
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  )),
                ),
              ],
            ),
          ),
        ));
  }
}
