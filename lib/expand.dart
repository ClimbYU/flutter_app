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
        body: Center(
          child: HomeContent(),
        ),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: IconContainer(
            Icons.home,
            color: Colors.deepOrangeAccent,
          ),
          flex: 1,
        ),
        Expanded(
          child: IconContainer(
            Icons.search,
            color: Colors.limeAccent,
          ),
          flex: 2,
        ),
        Expanded(
          child: IconContainer(
            Icons.home,
            color: Colors.cyanAccent,
          ),
          flex: 1,
        ),
      ],
    );
  }
}

class IconContainer extends StatelessWidget {
  double size = 32.0;
  IconData icon;
  Color color = Colors.green;

  IconContainer(this.icon, {this.color, this.size});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 100.0,
      height: 100.0,
      color: this.color,
      child: Center(
        child: Icon(
          this.icon,
          size: this.size,
          color: Colors.white,
        ),
      ),
    );
  }
}
