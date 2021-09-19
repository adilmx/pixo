import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pixo/src/views/UI/InputForm.dart';

class LoginView extends StatelessWidget {
  final Function setFieldToggle;
  final bool _isObscured;
  final IconData? _suffixIcon;
  LoginView(this.setFieldToggle,this._isObscured, this._suffixIcon);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
      children: [
        Center(
          child: Column(
            children:[
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.grey[900],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InputForm(
                    "username",
                    "",
                    25,
                    null,
                    false,
                    () => setFieldToggle(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InputForm(
                    "password",
                    "",
                    null,
                    this._suffixIcon,
                    this._isObscured,
                    () => setFieldToggle(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Respond to button press
                    },
                    child: Text('Login',
                        style: TextStyle(
                          fontSize: 20,
                        )),
                    style: ButtonStyle(),
                  ),
                ],
              ),
            ),
          ],
        ),
        ),
      ],
    );
  }
}
