

import 'package:flutter/material.dart';
import 'package:wangbl_flutter/random_words.dart';

class Day2App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    String title='Flutter 第二天';
    return MaterialApp(
        title: title,
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: new RandomWords()
    );
  }
}