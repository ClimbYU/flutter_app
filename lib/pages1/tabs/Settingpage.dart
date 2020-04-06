import 'package:flutter/material.dart';

class Settingpage extends StatefulWidget {
  Settingpage({Key key}) : super(key: key);

  @override
  _SettingpageState createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        RaisedButton(
          child: Text('home'),
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
        ),
      ]),
    );
  }
}
