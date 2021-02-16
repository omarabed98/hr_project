import 'package:flutter/material.dart';

class LeaveType extends StatefulWidget {
  LeaveType({Key key}) : super(key: key);

  @override
  _LeaveType createState() => _LeaveType();
}

class _LeaveType extends State<LeaveType> {
  String dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 7.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black12,
              width: 1,
            ),
          ),
          child: Center(
            child: DropdownButton<String>(
              value: dropdownValue,
              hint: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("choose your type")),
              icon: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.arrow_drop_down),
              ),
              iconSize: 22,
              elevation: 16,
              style: TextStyle(color: Colors.grey),
              isExpanded: true,
              underline: Container(height: 0),
              onChanged: (String newValue) {
                setState(() {
                  dropdownValue = newValue;
                });
              },
              items: <String>['one', 'Two', 'Free', 'Four']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(value),
                  ),
                );
              }).toList(),
            ),
          ),
        ));
  }
}


