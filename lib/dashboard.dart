import 'package:flutter/material.dart';

class dash  extends StatefulWidget {
  @override
   dash_State createState() =>  dash_State();
}

class  dash_State extends State <dash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen-1'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),title: Text('Notifications')),
          BottomNavigationBarItem(icon: Icon(Icons.settings),title: Text('Settings')),
        ],

      ),
      
    );
  }
}