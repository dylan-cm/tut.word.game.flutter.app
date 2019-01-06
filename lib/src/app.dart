import 'package:flutter/material.dart';
import 'screens/words.dart';

class App extends StatelessWidget {
  Widget build (BuildContext context){
    return MaterialApp(
      title: 'Word Game',
      theme: ThemeData(primarySwatch: Colors.red),
      home: Words(),
    );
  }
}