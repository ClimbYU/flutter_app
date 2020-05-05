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

  _TabsState(index) {
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

      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: UserAccountsDrawerHeader(
                    accountName: Text('flutter'),
                    accountEmail: Text('67378237@qq.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1588673752843&di=347dabec8da960facea17ad135480178&imgtype=0&src=http%3A%2F%2Fe.hiphotos.baidu.com%2Fzhidao%2Fpic%2Fitem%2Fd62a6059252dd42a1c362a29033b5bb5c9eab870.jpg'),
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1588663668&di=8a47d59823bbad05351f8bdf406d1c6f&src=http://a0.att.hudong.com/64/76/20300001349415131407760417677.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ],
            ),
            ListTile(
              title: Text('我的'),
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              onTap: () {
                Navigator.of(context).pop(); //隐藏侧边栏
              },
            ),
            Divider(),
            ListTile(
              title: Text('我的'),
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
            ),
            Divider(),
            ListTile(
              title: Text('我的'),
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
            ),
            Divider(),
          ],
        ),
      ),

      // drawer: Drawer(
      //   child: Column(
      //     children: <Widget>[
      //       Row(
      //         children: <Widget>[
      //           Expanded(
      //             child: DrawerHeader(
      //               child: Text('hello'),
      //               decoration: BoxDecoration(
      //                 image: DecorationImage(
      //                     image: NetworkImage(
      //                         'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1588663668&di=8a47d59823bbad05351f8bdf406d1c6f&src=http://a0.att.hudong.com/64/76/20300001349415131407760417677.jpg'),
      //                     fit: BoxFit.cover),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //       ListTile(
      //         title: Text('我的'),
      //         leading: CircleAvatar(
      //           child: Icon(Icons.home),
      //         ),
      //       ),
      //       Divider(),
      //       ListTile(
      //         title: Text('我的'),
      //         leading: CircleAvatar(
      //           child: Icon(Icons.home),
      //         ),
      //       ),
      //       Divider(),
      //       ListTile(
      //         title: Text('我的'),
      //         leading: CircleAvatar(
      //           child: Icon(Icons.home),
      //         ),
      //       ),
      //       Divider(),
      //     ],
      //   ),
      // ),
    );
  }
}
