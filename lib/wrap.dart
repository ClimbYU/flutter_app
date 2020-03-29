import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        width: 400,
        color: Colors.amber,
        padding: EdgeInsets.all(10),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.spaceBetween,
          runAlignment: WrapAlignment.spaceEvenly,
          children: <Widget>[
            MyButton('Button'),
            MyButton('Button'),
            MyButton('Button'),
            MyButton('Button'),
            MyButton('Button'),
            MyButton('Button'),
            MyButton('Button'),
          ],
        ));
  }
}

class MyButton extends StatelessWidget {
  final String text;

  const MyButton(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text(this.text),
      color: Theme.of(context).accentColor,
      onPressed: () {
        print('object');
      },
    );
  }
}
