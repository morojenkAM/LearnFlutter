import 'package:flutter/material.dart';
import 'AppTheme.dart';

class ThemeInheritedWidget extends InheritedWidget {
  final AppTheme appTheme;
  final Widget child;

  ThemeInheritedWidget({
    Key? key,
    required this.appTheme,
    required this.child,
  }) : super(key: key, child: child);

  static AppTheme of(BuildContext context) {
    final ThemeInheritedWidget? result =
    context.dependOnInheritedWidgetOfExactType<ThemeInheritedWidget>();
    assert(result != null, 'No ThemeInheritedWidget found in context');
    return result!.appTheme;
  }

  @override
  bool updateShouldNotify(ThemeInheritedWidget oldWidget) {
    return appTheme != oldWidget.appTheme;
  }
}
