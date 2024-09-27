import 'package:flutter/cupertino.dart';

class ItemInheritedWidget extends InheritedWidget{
  final List<String> items;
  final Function(String) addItem;
  final Function(int) removeItem;

  ItemInheritedWidget({
    Key? key,
    required Widget child,
    required this.items,
    required this.addItem,
    required this.removeItem
}) : super(key: key, child: child);

  static ItemInheritedWidget? of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<ItemInheritedWidget>();
  }

  @override
  bool updateShouldNotify(ItemInheritedWidget oldWidget) {
    return items != oldWidget.items;
  }
}