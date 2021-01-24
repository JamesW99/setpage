// https://pub.flutter-io.cn/packages/shake_animation_widget/install
import 'package:shake_animation_widget/shake_animation_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("测试"),
      ),
      body: Container(
        //填充
        constraints: BoxConstraints.expand(),
        //层叠布局
        child: Stack(
          children: [
            Positioned(
              right: 33,
              bottom: 33,
              //悬浮按钮
              child: RoteFloatingButton(
                //菜单图标组
                iconList: [
                  Icon(Icons.add),
                  Icon(Icons.message),
                  Icon(Icons.aspect_ratio),
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
