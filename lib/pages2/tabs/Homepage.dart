import 'package:flutter/material.dart';
import '../Tabs.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('homePage')),
        body: Column(
          children: <Widget>[
            Text('homePage'),
            RaisedButton(
                child: Text('home'),
                onPressed: () {
                  // 替换路由
                  // Navigator.of(context).pushReplacementNamed('/search');
                  //直接返回跟路由
                  Navigator.of(context).pushAndRemoveUntil(
                    new MaterialPageRoute(builder: (context) => new Tabs()),
                    (route) => route == null,
                  );
                })
          ],
        ));
  }
}
