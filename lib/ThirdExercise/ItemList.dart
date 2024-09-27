import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ItemInheritedWidget.dart';

class ItemList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final inheritedWidget = ItemInheritedWidget.of(context);
    final items = inheritedWidget?.items ?? [];

    return ListView.builder(
        itemCount: items.length,
      itemBuilder: (context, index){
          return ListTile(
            title: Text(items[index]),
            trailing: IconButton(
                 icon: const Icon(Icons.delete),
                onPressed:(){ inheritedWidget?.removeItem(index);})
          );
      },
    );
  }
}