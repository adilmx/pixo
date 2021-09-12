import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideDrawerElement extends StatelessWidget {
  final String elementText;
  final IconData elementIcon;
  final Function sideBarElementPressed;
  SideDrawerElement(
      {this.elementText, this.elementIcon, this.sideBarElementPressed});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(elementIcon),
          Padding(
            padding: EdgeInsets.only(left: 9),
            child: Text(
              elementText,
            ),
          ),
        ],
      ),
      onTap: sideBarElementPressed,
    );
  }
}
