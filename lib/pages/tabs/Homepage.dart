import 'package:flutter/material.dart';
import '../Search.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        RaisedButton(
          child: Text('search'),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Search(),
              ),
            );
          },
        ),
        RaisedButton(
          child: Text('setting'),
          onPressed: () {},
        ),
      ]),
    );
  }
}
