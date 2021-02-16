import 'package:flutter/material.dart';

class SalaryDetailsContainer extends StatelessWidget {
  const SalaryDetailsContainer({
    Key key,
    @required this.month,
    @required this.year,
    @required this.mainSalary,
    @required this.netSalary,
    @required this.ssAmount,
    @required this.deduction,
    @required this.raising,
    @required this.leavesAmount,
    @required this.vacationAmount,
  }) : super(key: key);

  final String month;
  final String year;
  final String mainSalary;
  final String netSalary;
  final String ssAmount;
  final String deduction;
  final String raising;
  final String leavesAmount;
  final String vacationAmount;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 450,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: Colors.white),
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
                    Icons.monetization_on,
                    color: Colors.grey,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    ssAmount,
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
                    Icons.attractions,
                    color: Colors.grey,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    deduction,
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
                    Icons.stacked_line_chart,
                    color: Colors.grey,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    raising,
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
                    Icons.calendar_today_outlined,
                    color: Colors.grey,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    leavesAmount,
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
                    Icons.perm_contact_cal_sharp,
                    color: Colors.grey,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    vacationAmount,
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
