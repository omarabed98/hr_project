import 'package:flutter/material.dart';
import 'package:hr_app/Widgets/LoginScreenWidget/LoginButton.dart';
import 'package:hr_app/Widgets/LoginScreenWidget/password-input.dart';
import 'package:hr_app/Widgets/LoginScreenWidget/text-field-input.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Background-image.png"),
                    fit: BoxFit.cover)),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Column(
                children: [
                  Flexible(
                    child: Center(
                      child: Text(
                        'HRLibra',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextInputField(
                        hint: 'Email',
                        inputType: TextInputType.emailAddress,
                        inputAction: TextInputAction.next,
                      ),
                      PasswordInput(
                        hint: 'Password',
                        inputAction: TextInputAction.done,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      LoginButton(
                        buttonName: 'Login',
                      ),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
