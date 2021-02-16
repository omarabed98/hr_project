import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_app/Widgets/VerificationScreenWidget/SubmitButton.dart';

class Verify extends StatefulWidget {
  @override
  _Verify createState() => _Verify();
}

class _Verify extends State<Verify> {
  var _controller1 = TextEditingController();
  var _controller2 = TextEditingController();
  var _controller3 = TextEditingController();
  var _controller4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 80),
              color: Colors.grey[100],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/images/walleterp_logo.png",
                    height: 80,
                    width: 100,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    flex: 2,
                    child: Text.rich(TextSpan(children: <InlineSpan>[
                      TextSpan(
                        text: 'HR',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Libra',
                        style: TextStyle(fontSize: 40, color: Colors.black),
                      )
                    ])),
                  ),
                  Expanded(
                    flex: 8,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Enter the 4-digit activation code',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            buildCodeNumberBox1(),
                            buildCodeNumberBox2(),
                            buildCodeNumberBox3(),
                            buildCodeNumberBox4(),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SubmitButton(),
                            ]),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(
                                    Icons.refresh_outlined,
                                    size: 50,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _controller1.clear();
                                      _controller2.clear();
                                      _controller3.clear();
                                      _controller4.clear();
                                    });
                                  }),
                              SizedBox(
                                width: 20,
                              ),
                            ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }

  Widget buildCodeNumberBox1() {
    final node = FocusScope.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 9),
      child: SizedBox(
        width: 50,
        height: 50,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            border: Border.all(
              color: Colors.grey[400],
              width: 1,
            ),
          ),
          child: TextField(
            controller: _controller1,
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            maxLength: 1,
            buildCounter: (BuildContext context,
                    {int currentLength, int maxLength, bool isFocused}) =>
                null,
            textInputAction: TextInputAction.next,
            onEditingComplete: () => node.nextFocus(),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1F1F1F),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCodeNumberBox2() {
    final node = FocusScope.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 9),
      child: SizedBox(
        width: 50,
        height: 50,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            border: Border.all(
              color: Colors.grey[400],
              width: 1,
            ),
          ),
          child: TextField(
            controller: _controller2,
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            maxLength: 1,
            buildCounter: (BuildContext context,
                    {int currentLength, int maxLength, bool isFocused}) =>
                null,
            textInputAction: TextInputAction.next,
            onEditingComplete: () => node.nextFocus(),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1F1F1F),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCodeNumberBox3() {
    final node = FocusScope.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 9),
      child: SizedBox(
        width: 50,
        height: 50,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            border: Border.all(
              color: Colors.grey[400],
              width: 1,
            ),
          ),
          child: TextField(
            controller: _controller3,
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            maxLength: 1,
            buildCounter: (BuildContext context,
                    {int currentLength, int maxLength, bool isFocused}) =>
                null,
            textInputAction: TextInputAction.next,
            onEditingComplete: () => node.nextFocus(),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1F1F1F),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCodeNumberBox4() {
    final node = FocusScope.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 9),
      child: SizedBox(
        width: 50,
        height: 50,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            border: Border.all(
              color: Colors.grey[400],
              width: 1,
            ),
          ),
          child: TextField(
            controller: _controller4,
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            maxLength: 1,
            buildCounter: (BuildContext context,
                    {int currentLength, int maxLength, bool isFocused}) =>
                null,
            textInputAction: TextInputAction.next,
            onEditingComplete: () => node.nextFocus(),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1F1F1F),
            ),
          ),
        ),
      ),
    );
  }
}
