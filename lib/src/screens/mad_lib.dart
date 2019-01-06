import 'package:flutter/material.dart';
import 'package:random_words/random_words.dart';

class MadLib extends StatefulWidget{
  State<StatefulWidget> createState() => _MadLibState();
}

class _MadLibState extends State<MadLib>{
  WordNoun noun = WordNoun.random();
  WordAdjective adjective = WordAdjective.random();

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
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.refresh),
          onPressed: _reloadMadLib,
        ),
      );
  }

  void _reloadMadLib(){
    setState(() {
          noun = WordNoun.random();
          adjective = WordAdjective.random();
        });
  }
}