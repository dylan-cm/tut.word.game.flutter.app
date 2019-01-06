import 'package:flutter/material.dart';
import 'package:random_words/random_words.dart';

class Words extends StatelessWidget{
  Widget build (BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Word Game"),
        ),
        body: Center(
          child: Text(
            'Noun: '
          ),
        ),
      );
  }
}