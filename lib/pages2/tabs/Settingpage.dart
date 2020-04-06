import 'package:flutter/material.dart';

class Settingpage extends StatefulWidget {
  Settingpage({Key key}) : super(key: key);

  @override
  _SettingpageState createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('settingPage')),
      body: Column(
        children: <Widget>[
          Text('settingPage'),
        ],
      ),
    );
  }
}
