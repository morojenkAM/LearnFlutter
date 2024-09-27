import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom ListView Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom ListView Example'),
        ),
        body: CustomListView(),
      ),
    );
  }
}

class TextWidget extends StatelessWidget{

  TextWidget({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(border:  Border.all(color: Colors.black, width: 1)),
      child: Text(
        text,
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}




class CustomListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      reverse: true,
      children: <Widget>[
      TextWidget (text: "1"),
      TextWidget (text: "2"),
      TextWidget (text: "3"),
      TextWidget (text: "4"),
      TextWidget (text: "5"),
      TextWidget (text: "6"),
      TextWidget (text: "7"),
      TextWidget (text: "8"),
      TextWidget (text: "9"),
      TextWidget (text: "10"),
      TextWidget (text: "11"),
      TextWidget (text: "12"),
    ],);
  }
}