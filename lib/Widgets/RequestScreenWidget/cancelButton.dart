import 'package:flutter/material.dart';
import 'package:hr_app/palette.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({
    Key key,
    @required this.buttonName,
    @required this.color,
    @required this.colorBorder,
    @required this.textColor,

  }) : super(key: key);

  final String buttonName;
  final Color color;
  final Color colorBorder;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.06,
      width: size.width * 0.42,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: colorBorder,
        ),
        color: color,
      ),
      child: FlatButton(
        onPressed: () => Navigator.of(context).pop(),
        child: Text(
          buttonName,
          style: kBodyText.copyWith(color: textColor, fontSize: 20),
        ),
      ),
    );
  }
}
