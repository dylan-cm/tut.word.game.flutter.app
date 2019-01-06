import 'package:flutter/material.dart';
import 'package:random_words/random_words.dart';

class RandomNoun extends StatelessWidget{
  final noun = WordNoun.random();

  Widget build (BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Word Game"),
        ),
        body: Center(
          child: Text(
            'Noun: ${noun.asCapitalized}'
          ),
        ),
      );
  }
}