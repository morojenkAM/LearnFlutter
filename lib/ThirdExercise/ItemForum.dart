import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/ThirdExercise/ItemInheritedWidget.dart';

class ItemForm extends StatefulWidget{
  @override
  ItemFormState  createState() => ItemFormState();
}

class ItemFormState extends State<ItemForm> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
   final inheritedWidget = ItemInheritedWidget.of(context);

  return Padding(padding: const EdgeInsets.all(16.0),
  child: Row(
    children: [
      Expanded(child: TextField(
        controller: controller,
        decoration: InputDecoration(labelText: 'Adauga un item'),
      ),
      ),
      IconButton(icon: Icon(Icons.add),
      onPressed: (){
        final newItem = controller.text;
        if(newItem.isNotEmpty){
          inheritedWidget?.addItem(newItem);
          controller.clear();
        }
      },
      ),
    ],
  ),

  );

  }

}