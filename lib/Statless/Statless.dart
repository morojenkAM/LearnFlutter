import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(ScreenWidget());
}

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('StatlessWidget'),
        ),
        body: Statless(),
      ),
    );
  }
}

class Statless extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
            Center(child: Text('textul meu', textDirection: TextDirection.ltr)),
    );
  }
}