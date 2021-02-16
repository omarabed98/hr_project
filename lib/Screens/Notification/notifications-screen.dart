import 'package:flutter/material.dart';
import 'package:hr_app/Widgets/NotificationScreen/NotificationContainer.dart';


class Notifications extends StatelessWidget {
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
              title: Text("Notification"),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios_sharp),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            body: Container(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    NotificationContainer(headingText: "Separate Development from Deployment", bodyText: "letters and numbers, word and phrases, sentences and paragraphs. It's how we convey most of the meaning in web pages. Text content informs.", date: "02-09-0219 / 11:43PM"),
                    SizedBox(
                      height: 15,
                    ),
                    NotificationContainer(headingText: "Separate Development from Deployment", bodyText: "letters and numbers, word and phrases, sentences and paragraphs. It's how we convey most of the meaning in web pages. Text content informs.", date: "02-09-0219 / 11:43PM"),
                    SizedBox(
                      height: 15,
                    ),
                    NotificationContainer(headingText: "Separate Development from Deployment", bodyText: "letters and numbers, word and phrases, sentences and paragraphs. It's how we convey most of the meaning in web pages. Text content informs.", date: "02-09-0219 / 11:43PM"),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
