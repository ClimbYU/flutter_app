import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
          child: Text('search'),
          onPressed: () {
            Navigator.pushNamed(context, '/search', arguments: {
              'id': 123,
            });
          }),
    );
  }
}
