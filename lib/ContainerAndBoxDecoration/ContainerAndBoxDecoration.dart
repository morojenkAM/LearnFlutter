import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ScreenWidget());
}

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container Widget'),
        ),
        body: SimpleWidget(),
      ),
    );
  }
}

class SimpleWidget extends StatelessWidget {
const SimpleWidget({Key? key}) :super(key: key);

@override
  Widget build(BuildContext context){
  return  Center(
child: Container(
  //color: Colors.green,
  child: Text('Panda', style: TextStyle(fontSize: 40, color: Colors.white70)),
  height: 300,
  width: 300,
  alignment: Alignment.center,
  // padding: EdgeInsets.all(60),
  //transform: Matrix4.rotationZ(0.1),
  decoration: BoxDecoration(

    color: Colors.green,
   image: DecorationImage(image: Image.network('https://assets-cdn.123rf.com/index/static/assets/top-section-bg.jpeg').image, fit: BoxFit.cover),
   borderRadius: BorderRadius.circular(15),
  border: Border.all(
      color: Colors.black,
    width: 8
  ))
  ),
   // gradient: LinearGradient(
     // colors: [Colors.red, Colors.cyan],
    );
}

}
