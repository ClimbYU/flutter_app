import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        RaisedButton(
          child: Text('search'),
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/search',
              arguments: {
                'id': 123,
              },
            );
          },
        ),
        RaisedButton(
          child: Text('button示例'),
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/ButtonPageDemo',
            );
          },
        ),
      ],
    ));
  }
}
