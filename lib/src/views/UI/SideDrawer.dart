import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pixo/src/views/UI/SideDrawerElement.dart';

import 'SideDrawerHeader.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SideDrawerHeader(
            headerTitle: "PIXO APP",
          ),
          SideDrawerElement(
            elementText: "Add New Post",
            elementIcon: Icons.add_to_photos,
            sideBarElementPressed: () {},
          ),
          SideDrawerElement(
            elementText: "Posts Liked",
            elementIcon: Icons.favorite_outlined,
            sideBarElementPressed: () {},
          ),
          SideDrawerElement(
            elementText: "Settings",
            elementIcon: Icons.settings,
            sideBarElementPressed: () {},
          ),
        ],
      ),
    );
  }
}
