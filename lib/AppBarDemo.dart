import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  const AppBarDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //配置顶部可以切换
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter'),
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: () {},
          // ),
          // actions: <Widget>[
          //   IconButton(
          //     icon: Icon(Icons.search),
          //     onPressed: () {},
          //   )
          // ],
          centerTitle: true, //标题居中显示
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: '热门'),
              Tab(text: '推荐'),
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('first'),
              ),
              ListTile(
                title: Text('second'),
              ),
              ListTile(
                title: Text('third'),
              )
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('第一个'),
              ),
              ListTile(
                title: Text('第二个'),
              ),
              ListTile(
                title: Text('第三个'),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
