import 'package:flutter/material.dart';

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
    // TODO: implement build
    return ListView(
      padding: EdgeInsets.fromLTRB(10, 40, 10, 10),
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.search),
          title: Text(
            'data',
            style: TextStyle(
              color: Colors.greenAccent,
              fontSize: 30.0,
              backgroundColor: Color.fromRGBO(123, 232, 23, 1),
            ),
          ),
          subtitle: Text(
            '34sdfsdf',
          ),
        ),
        ListTile(
          leading: Image.network(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584796370850&di=031a82e64478aca2786bc256bb03fa84&imgtype=0&src=http%3A%2F%2Fa3.att.hudong.com%2F68%2F61%2F300000839764127060614318218_950.jpg'),
          title: Text(
            'data',
          ),
          subtitle: Text(
            '34sdfsdf',
          ),
        ),
      ],
    );
  }
}
