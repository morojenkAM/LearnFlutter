import 'package:flutter/material.dart';
import 'ThemeInheritedWidget.dart';

class ThemedText extends StatelessWidget {
  final String text;

  ThemedText(this.text);

  @override
  Widget build(BuildContext context) {
    final appTheme = ThemeInheritedWidget.of(context);
    return Container(
      color: appTheme.backgroundColor,
      child: Text(
        text,
        style: TextStyle(color: appTheme.textColor),
      ),
    );
  }
}
