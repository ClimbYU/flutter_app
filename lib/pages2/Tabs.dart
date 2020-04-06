import 'package:flutter/material.dart';
import './Home.dart';
import './Search.dart';
import './Setting.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key, this.index = 0});

  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _pageList = [
    Home(),
    Search(),
    Setting(),
  ];

  _TabsState({index}) {
    this._currentIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        iconSize: 30,
        fixedColor: Colors.greenAccent, //选中颜色
        type: BottomNavigationBarType.fixed, //配置底部有多个按钮
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text(
              '首页',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            title: Text(
              '搜索',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            title: Text(
              '设置',
            ),
          ),
        ],
      ),
    );
  }
}
