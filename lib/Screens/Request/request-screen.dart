import 'package:flutter/material.dart';
import 'package:hr_app/Widgets/RequestScreenWidget/Total-Hours.dart';
import 'package:hr_app/Widgets/RequestScreenWidget/buttonSubmit.dart';
import 'package:hr_app/Widgets/RequestScreenWidget/cancelButton.dart';
import 'package:hr_app/Widgets/RequestScreenWidget/constants.dart';
import 'package:hr_app/Widgets/RequestScreenWidget/leave-type-list.dart';
import 'package:hr_app/Widgets/RequestScreenWidget/mobile-number.dart';
import 'package:hr_app/Widgets/RequestScreenWidget/note.dart';
import 'package:hr_app/Widgets/RequestScreenWidget/request-date.dart';
import 'package:hr_app/Widgets/RequestScreenWidget/request-type.dart';

class RequestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
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
              title: Text("Request"),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios_sharp),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 15,
                        ),
                        child: Text("Request Type", style: kLabelStyle),
                      ),
                      RequestType(),
                      Text("Request Date", style: kLabelStyle),
                      RequestDate(),
                      Text("Leave Type", style: kLabelStyle),
                      LeaveType(),
                      Text("From", style: kLabelStyle),
                      RequestDate(),
                      Text("To", style: kLabelStyle),
                      RequestDate(),
                      Text("Total Hour", style: kLabelStyle),
                      TotalHours(),
                      Text("Mobile Number", style: kLabelStyle),
                      MobileNumber(),
                      Text("Note", style: kLabelStyle),
                      Note(),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          CancelButton(
                              buttonName: "Cancel",
                              color: null,
                              colorBorder: Colors.grey,
                              textColor: Colors.grey),
                          SizedBox(
                            width: 15,
                          ),
                          ButtonSubmit(
                            buttonName: "Submit",
                            color: Colors.lightGreen,
                            colorBorder: Colors.lightGreen,
                            textColor: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
