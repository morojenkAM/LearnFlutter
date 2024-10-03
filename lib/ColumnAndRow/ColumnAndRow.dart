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
          title: const Text('Column And Row'),
        ),
        body: SimpleWidget(),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final double width;
  final double fontSize;

  const TextWidget({
    Key? key, // Optional key, no need for `required`
    required this.text,
    required this.color,
    required this.width,
    required this.fontSize,
    required BoxDecoration decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: color,
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize),
      ),
    );
  }
}

class SimpleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        TextWidget(
          color: Colors.limeAccent,
          width: 120,
          text: 'First',
          fontSize: 50,
          decoration: BoxDecoration(
            border: Border.all(width: 15,
                color: Colors.black),
            borderRadius: BorderRadius.circular(0.001)
          )

        ),
        TextWidget(
          color: Colors.limeAccent,
          width: 120,
          text: 'First',
          fontSize: 50,
            decoration: BoxDecoration(
                border: Border.all(width: 15,
                    color: Colors.black),
                borderRadius: BorderRadius.circular(0.001)
            )
        ),
        TextWidget(
          color: Colors.limeAccent,
          width: 120,
          text: 'First',
          fontSize: 50,
            decoration: BoxDecoration(
                border: Border.all(width: 15,
                    color: Colors.black),
                borderRadius: BorderRadius.circular(0.001)
            )
        ),
        TextWidget(
          color: Colors.limeAccent,
          width: 120,
          text: 'First',
          fontSize: 50,
            decoration: BoxDecoration(
                border: Border.all(width: 15,
                    color: Colors.black),
                borderRadius: BorderRadius.circular(0.001)
            )
        ),
        TextWidget(
          color: Colors.limeAccent,
          width: 120,
          text: 'First',
          fontSize: 50,
            decoration: BoxDecoration(
                border: Border.all(width: 15,
                    color: Colors.black),
                borderRadius: BorderRadius.circular(0.001)
            )
        ),
      ],
    );
  }
}
