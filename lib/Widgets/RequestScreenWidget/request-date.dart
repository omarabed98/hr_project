import 'package:flutter/material.dart';
import 'package:hr_app/Widgets/RequestScreenWidget/my_date_picker.dart';

class RequestDate extends StatefulWidget {
  RequestDate({Key key}) : super(key: key);

  @override
  _RequestDate createState() => _RequestDate();
}

class _RequestDate extends State<RequestDate> {
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
            child: MyTextFieldDatePicker(
              suffixIcon: Icon(Icons.date_range),
              lastDate: DateTime.now().add(Duration(days: 366)),
              firstDate: DateTime.now(),
              initialDate: DateTime.now().add(Duration(days: 1)),
              onDateChanged: (selectedDate) {
                // Do something with the selected date
              },
            ),
          ),
        ));
  }
}
