import 'package:flutter/material.dart';
import 'package:pixo/src/views/UI/BodyEmptyCopyright.dart';
import 'package:pixo/src/views/UI/NavBar.dart';
import 'package:pixo/src/views/UI/PostsList.dart';
import 'package:pixo/src/views/UI/SideDrawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: NavBar(),
        drawer: SideDrawer(),
        body: Center(
          // child: BodyEmptyCopyright(),
          child: PostsList(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'pixo',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
