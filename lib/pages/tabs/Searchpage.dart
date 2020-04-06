import 'package:flutter/material.dart';
import '../FromPage.dart';

class Searchpage extends StatefulWidget {
  Searchpage({Key key}) : super(key: key);

  @override
  _SearchpageState createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text('Form'),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => FromPage(title: '你好'),
            ),
          );
        },
      ),
    );
  }
}
