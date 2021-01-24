// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    // home: Setup_page(),
    home: BottomNavigationWidget(),
  ));
}

class BottomNavigationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Setup_page();
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

class Setup_page extends State<BottomNavigationWidget> {
  final _bottomNavigationColor = Colors.blue;
  int _currentIndex = 4;

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

      // bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _bottomNavigationColor,
              ),
              title: Text(
                'HOME',
                style: TextStyle(color: _bottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: _bottomNavigationColor,
              ),
              title: Text(
                'Search',
                style: TextStyle(color: _bottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.camera,
                color: _bottomNavigationColor,
              ),
              title: Text(
                'Camera',
                style: TextStyle(color: _bottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
                color: _bottomNavigationColor,
              ),
              title: Text(
                'Messeges',
                style: TextStyle(color: _bottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: _bottomNavigationColor,
              ),
              title: Text(
                'Setting',
                style: TextStyle(color: _bottomNavigationColor),
              )),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),

      // 6 navigate botton
      body: Center(
          child: Column(
        children: [
          const RaisedButton(
            onPressed: null,
            child: Text('             Setting             ',
                style: TextStyle(fontSize: 35)),
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
        ],
      )),
    );
  }
}
