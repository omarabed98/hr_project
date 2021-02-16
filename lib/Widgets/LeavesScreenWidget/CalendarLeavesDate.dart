import 'package:flutter/material.dart';
import 'package:hr_app/Widgets/RequestScreenWidget/my_date_picker.dart';

class CalendarLeavesDate extends StatefulWidget {
  CalendarLeavesDate({Key key}) : super(key: key);

  @override
  _CalendarLeavesDate createState() => _CalendarLeavesDate();
}

class _CalendarLeavesDate extends State<CalendarLeavesDate> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 330,
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
