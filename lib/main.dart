import 'package:flutter/material.dart';
import 'package:pixo/src/views/UI/NavBar.dart';
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'pixo app',
              ),
              Text(
                'By adilmx',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
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
