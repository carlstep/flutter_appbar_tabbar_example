import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String text = 'None Clicked';
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      endDrawer: Drawer(
        backgroundColor: Colors.blueGrey[200],
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[500],
        actions: [
          IconButton(
            splashRadius: 30,
            onPressed: () {
              setState(() {
                text = 'Casting Clicked';
              });
            },
            icon: Icon(Icons.cast),
            iconSize: 30,
          ),
          IconButton(
            splashRadius: 30,
            onPressed: () {
              setState(() {
                text = 'Notifications Clicked';
              });
            },
            icon: Icon(Icons.notifications),
            iconSize: 30,
          ),
          IconButton(
            splashRadius: 30,
            onPressed: () {
              setState(() {
                text = 'Search Clicked';
              });
            },
            icon: Icon(Icons.search),
            iconSize: 30,
          ),
          IconButton(
            splashRadius: 30,
            onPressed: () {
              setState(() {
                text = 'Profile clicked, endDrawer opened.';
                drawerKey.currentState?.openEndDrawer();
              });
            },
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            iconSize: 30,
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(
            image: AssetImage('assets/images/logo.png'),
          ),
        ),
        title: Text('Flutter'),
      ),
      body: Center(
        child: Text(text),
      ),
    );
  }
}
