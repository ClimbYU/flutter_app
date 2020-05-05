import 'package:flutter/material.dart';

class ButtonPageDemo extends StatelessWidget {
  const ButtonPageDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮演示页面'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                child: Text('普通按钮'),
              ),
              SizedBox(
                width: 10,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text('普通按钮'),
                color: Colors.orangeAccent,
                textColor: Colors.pink,
              ),
              SizedBox(
                width: 10,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text('有阴影按钮'),
                elevation: 10,
                color: Colors.orangeAccent,
                textColor: Colors.pink,
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 120,
                height: 40,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text('设置宽高按钮'),
                  elevation: 10,
                  color: Colors.orangeAccent,
                  textColor: Colors.pink,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              RaisedButton.icon(
                onPressed: null, //为null时按钮是禁用状态
                icon: Icon(Icons.search),
                label: Text('图标按钮'),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                    margin: EdgeInsets.all(10),
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text('自适应按钮'),
                      elevation: 10,
                      color: Colors.orangeAccent,
                      textColor: Colors.pink,
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 120,
                height: 40,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: () {},
                  child: Text('圆角按钮'),
                  elevation: 10,
                  color: Colors.orangeAccent,
                  textColor: Colors.pink,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 80,
                child: RaisedButton(
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Colors.orangeAccent,
                    ),
                  ),
                  splashColor: Colors.orange,
                  onPressed: () {},
                  child: Text('圆形按钮'),
                  elevation: 10,
                  color: Colors.orangeAccent,
                  textColor: Colors.pink,
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text('扁平化按钮'),
                color: Colors.orangeAccent,
              ),
              SizedBox(
                width: 10,
              ),
              OutlineButton(
                onPressed: () {},
                child: Text('outLineButton'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
