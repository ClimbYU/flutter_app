import 'package:flutter/material.dart';

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
            Navigator.pushNamed(context, '/search', arguments: {
              'id': 123,
            });
          },
        ),
      ]),
    );
  }
}
