import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BodyEmptyCopyright extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
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
          );
  }
}