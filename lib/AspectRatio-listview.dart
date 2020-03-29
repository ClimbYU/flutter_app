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
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  '你好',
                  style: TextStyle(fontSize: 35),
                ),
                subtitle: Text('hello'),
              ),
              ListTile(
                title: Text('你好'),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584796370850&di=031a82e64478aca2786bc256bb03fa84&imgtype=0&src=http%3A%2F%2Fa3.att.hudong.com%2F68%2F61%2F300000839764127060614318218_950.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584796370850&di=031a82e64478aca2786bc256bb03fa84&imgtype=0&src=http%3A%2F%2Fa3.att.hudong.com%2F68%2F61%2F300000839764127060614318218_950.jpg',
                    fit: BoxFit.cover,
                    width: 60,
                    height: 60,
                  ),
                ),
                title: Text('你好'),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584796370850&di=031a82e64478aca2786bc256bb03fa84&imgtype=0&src=http%3A%2F%2Fa3.att.hudong.com%2F68%2F61%2F300000839764127060614318218_950.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584796370850&di=031a82e64478aca2786bc256bb03fa84&imgtype=0&src=http%3A%2F%2Fa3.att.hudong.com%2F68%2F61%2F300000839764127060614318218_950.jpg'),
                ),
                title: Text('你好'),
                subtitle: Text('data'),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        )
      ],
    );
  }
}
