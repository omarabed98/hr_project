import 'package:flutter/material.dart';
import 'package:hr_app/Widgets/SettingsScreenWidget/Button.dart';
import 'package:hr_app/Widgets/SettingsScreenWidget/button-container.dart';


class Settings extends StatelessWidget {
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
              title: Text("Settings"),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios_sharp),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            body: Container(
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      flex: 8,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 30,
                            ),
                          ),
                          ButtonContainer(buttonName: "Help Support"),
                          SizedBox(
                            height: 15,
                          ),
                          ButtonContainer(buttonName: "Edit your Profile"),
                        ],
                      ),
                    ),
                    Button(buttonName: "Logout"),
                    SizedBox(
                      height: 30,
                    )
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
