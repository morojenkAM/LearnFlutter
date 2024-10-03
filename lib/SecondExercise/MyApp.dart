import 'package:flutter/material.dart';
import 'ThemedText.dart';
import 'ThemeInheritedWidget.dart';
import 'AppTheme.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkTheme = false;

  void _toggleTheme() {
    setState(() {
      isDarkTheme = !isDarkTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = isDarkTheme
        ? AppTheme(backgroundColor: Colors.black, textColor: Colors.white)
        : AppTheme(backgroundColor: Colors.white, textColor: Colors.black);

    return MaterialApp(
      home: ThemeInheritedWidget(
        appTheme: appTheme,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Theme Switcher'),
            actions: [
              IconButton(
                icon: Icon(Icons.brightness_6),
                onPressed: _toggleTheme,
              ),
            ],
          ),
          body: Column(
            children: [
              ThemedText('Hello, World!'),
              ThemedText('Welcome to the theme manager.'),
            ],
          ),
        ),
      ),
    );
  }
}
