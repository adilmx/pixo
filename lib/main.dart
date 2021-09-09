import 'package:flutter/material.dart';

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
        appBar: AppBar(
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
        ),
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(color: Colors.blueGrey[100]),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Text(
                      'PIXO APP',
                      style: TextStyle(
                        color: Colors.blueGrey[900],
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.add_to_photos),
                  Padding(
                    padding: EdgeInsets.only(left: 9),
                    child: Text(
                      'Add New Post',
                    ),
                  ),
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.favorite_outlined),
                  Padding(
                    padding: EdgeInsets.only(left: 9),
                    child: Text(
                      'Posts Liked',
                    ),
                  ),
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.settings),
                  Padding(
                    padding: EdgeInsets.only(left: 9),
                    child: Text(
                      'Settings',
                    ),
                  ),
                ],
              ),
              onTap: () {},
            ),
          ],
        )),
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
