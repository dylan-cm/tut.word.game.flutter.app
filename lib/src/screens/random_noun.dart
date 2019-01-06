import 'package:flutter/material.dart';
import 'package:random_words/random_words.dart';

class RandomNoun extends StatefulWidget{
  _RandomNounState createState() => _RandomNounState();
}

class _RandomNounState extends State<RandomNoun>{
  WordNoun noun = WordNoun.random();

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
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.refresh),
          onPressed: _reloadNoun,
        ),
      );
  }

  void _reloadNoun(){
    setState(() {
          noun = WordNoun.random();
        });
  }
}