import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  final String labelText;
  final String helperText;
  final int? maxLength;

  final IconData? suffixIcon;

  final bool _isObscured;
  final VoidCallback setFieldToggle;
  InputForm(
    this.labelText,
    this.helperText,
    this.maxLength,
    this.suffixIcon,
    this._isObscured,
    this.setFieldToggle,
  );
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: this._isObscured,
      //initialValue: "Username",
      maxLength: this.maxLength,
      decoration: InputDecoration(
        // icon: Icon(
        //   Icons.local_activity,
        // ),
        labelText: this.labelText,
        labelStyle: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 18,
          color: Colors.grey[900],
        ),
        helperText: this.helperText,
        // errorText: "Username is required",
        suffixIcon: IconButton(
          onPressed: setFieldToggle,
          icon: Icon(
            this.suffixIcon,
          ),
          color: Colors.grey[800],
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
