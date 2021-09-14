import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideDrawerHeader extends StatelessWidget {
  final String? headerTitle;
  SideDrawerHeader({this.headerTitle});
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(color: Colors.blueGrey[100]),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              headerTitle!,
              style: TextStyle(
                color: Colors.blueGrey[900],
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
