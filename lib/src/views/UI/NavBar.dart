import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget implements PreferredSize {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "PIXO",
      ),
      actions: [
        Icon(
          Icons.more_vert,
        ),
      ],
      backgroundColor: Colors.white,
      actionsIconTheme: IconThemeData(
        color: Colors.blueGrey[900],
        size: 30,
      ),
      textTheme: TextTheme(
        headline6: TextStyle(
          color: Colors.blueGrey[900],
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      automaticallyImplyLeading: false,
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
