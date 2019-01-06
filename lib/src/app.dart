import 'package:flutter/material.dart';
import 'screens/mad_lib.dart';
import 'screens/random_noun.dart';

class App extends StatefulWidget {
 App({Key key}) : super(key: key);

 @override
 _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 1;
  final _widgetOptions = [
    RandomNoun(),
    MadLib(),
  ];

  Widget build (BuildContext context){
    return MaterialApp(
      title: 'Word Game',
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.font_download), title: Text('Random Word')),
            BottomNavigationBarItem(icon: Icon(Icons.star), title: Text('Mad Lib')),
          ],
          currentIndex: _selectedIndex,
          fixedColor: Colors.redAccent,
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
}