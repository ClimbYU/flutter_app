import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                  indicatorColor: Colors.red,
                  isScrollable: true,
                  labelColor: Colors.red,
                  unselectedLabelColor: Colors.white,
                  tabs: <Widget>[
                    Tab(
                      text: '推荐',
                    ),
                    Tab(text: '热门'),
                    Tab(
                      text: '推荐',
                    ),
                    Tab(text: '热门'),
                    Tab(
                      text: '推荐',
                    ),
                    Tab(text: '热门'),
                    Tab(
                      text: '推荐',
                    ),
                    Tab(text: '热门'),
                  ],
                ),
              ),
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
