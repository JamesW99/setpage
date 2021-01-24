import 'package:flutter/material.dart';
import 'package:shake_animation_widget/shake_animation_widget.dart';

// if line 2 error. https://pub.flutter-io.cn/packages/shake_animation_widget/install

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    // home: Setup_page(),
    home: HomePage(),
  ));
}

class TargetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

class Setup_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //The logo
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.all(70),
          child: Image.asset(
            'assets/icons/LOGONEW.png',
          ),
        ),

        //mail Botton
        actions: [
          IconButton(
            icon: Icon(
              Icons.mail,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),

      // 6 navigate botton
      body: Center(
          child: Column(
        children: [
          const RaisedButton(
            onPressed: null,
            child: Text('             Setting             ',
                style: TextStyle(fontSize: 20)),
          ),
          ElevatedButton(
            child: Text('Account Information'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TargetPage()),
              );
            },
          ),
          ElevatedButton(
            child: Text('     Porfile  Setting     '),
            onPressed: () {
              // go Porfile Setting page
            },
          ),
          ElevatedButton(
            child: Text('       Perferences       '),
            onPressed: () {
              // go perferences page
            },
          ),
          ElevatedButton(
            child: Text('              Help              '),
            onPressed: () {
              // show help page
            },
          ),
          ElevatedButton(
            child: Text('            About             '),
            onPressed: () {
              // show about page
            },
          ),
          ElevatedButton(
            child: Text('            Logout            '),
            onPressed: () {
              // do logout
            },
          ),
          ButtonBar(
            children: <Widget>[
              RaisedButton(),
              RaisedButton(),
              RaisedButton(),
              RaisedButton(),
            ],
          )
        ],
      )),
    );
  }
}


class HomePage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        //填充
        constraints: BoxConstraints.expand(),
        //层叠布局
        child: Stack(
          children: [
            Positioned(
              left: 33,
              bottom: 33,
              //悬浮按钮
              child: RoteFloatingButton(
                //菜单图标组
                iconList: [
                  Icon(Icons.person),
                  Icon(Icons.search),
                  Icon(Icons.camera),
                  Icon(Icons.home),
                ],
                //点击事件回调
                clickCallback: (int index) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
