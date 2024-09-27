import 'package:flutter/cupertino.dart';
import 'package:learn_flutter/FirstExercise/CounterInheritedWidget.dart';

class CounterDisplay extends StatelessWidget{//partea statica care nu se schimba

  @override
  Widget build(BuildContext context){
    // in variabila couter se stogheaza ceea ce se cauta
    // in clasa CounterInheritedWidget contex cu ajutorul la metoda of
    // daca a gasit din contex counter afiseaza  counter daca nu atunci 0
    final counter = CounterInheritedWidget.of(context)?.counter ?? 0;
    return Text(
      'Contor : $counter',
      style: const TextStyle(fontSize: 24),
    );
  }
}