import 'package:flutter/material.dart';
import 'package:pixo/src/views/UI/LoginView.dart';
import 'package:pixo/src/views/UI/NavBar.dart';
import 'package:pixo/src/views/UI/PostsList.dart';
import 'package:pixo/src/views/UI/SideDrawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var routes = <String, WidgetBuilder>{
      LoginPage.routeName: (BuildContext context) => new LoginPage(),
    };
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(),
      routes: routes,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<HomePage> {
  void _goToLogin(){
    Navigator.pushNamed(context, LoginPage.routeName);
  }
  void _explorePosts(){
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: NavBar(),
        drawer: SideDrawer(_goToLogin,_explorePosts),
        body: Center(
          // child: BodyEmptyCopyright(),
          child: PostsList(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _goToLogin,
          tooltip: 'pixo',
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  
  
}

/* Login Route */
class LoginPage extends StatefulWidget {
  static const String routeName = "/LoginPage";

  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  /* Login Form State */
  late IconData _suffixIcon = Icons.visibility;
  late bool _isObscured = true;

  void _setFieldToggle(){
    setState(() {
          this._isObscured = !this._isObscured;
        });
        if(this._isObscured){
          this._suffixIcon = Icons.visibility_off;
        }else{
          this._suffixIcon = Icons.visibility;
        }
  }
  void _goToLogin(){
    Navigator.pushNamed(context, LoginPage.routeName);
  }
  void _explorePosts(){
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: NavBar(),
        body: Center(
          // child: BodyEmptyCopyright(),
          child: LoginView(_setFieldToggle,_isObscured,_suffixIcon),
        ),
        drawer: SideDrawer(_goToLogin,_explorePosts),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'pixo',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}