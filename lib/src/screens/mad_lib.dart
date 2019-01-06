import 'package:flutter/material.dart';
import 'package:random_words/random_words.dart';

class MadLib extends StatelessWidget{
  final noun = WordNoun.random();
  final adjective = WordAdjective.random();

  Widget build (BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Word Game"),
        ),
        body: Center(
          child: Text(
            'Mr. ${noun.asCapitalized} wrote a $adjective app in Flutter.'
          ),
        ),
      );
  }
}