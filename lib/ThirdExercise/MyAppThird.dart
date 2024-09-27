import 'package:flutter/material.dart';
import 'package:learn_flutter/ThirdExercise/ItemManager.dart';

class MyAppThird extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InheritedWidget List Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ItemManager(),
    );
  }
}