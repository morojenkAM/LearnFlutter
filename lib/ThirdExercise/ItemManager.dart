import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/ThirdExercise/ItemInheritedWidget.dart';

import 'ItemForum.dart';
import 'ItemList.dart';

class ItemManager extends StatefulWidget{

  @override
  ItemManagerState createState() => ItemManagerState();
  }

class ItemManagerState extends State<ItemManager> {
  List<String> items = [];

  void addItem(String newItem){
    setState(() {
      items.add(newItem);
    });
}

  void removeItem(int index){
    setState(() {
      items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ItemInheritedWidget(
        items: items,
        addItem: addItem,
        removeItem: removeItem,
      child: Scaffold(
        appBar: AppBar(title: Text("InheritedWidget ItemList")),
        body: Column(
          children: [Expanded(child: ItemList()), ItemForm(),
          ],
        ),
      ),
    );
  }
}