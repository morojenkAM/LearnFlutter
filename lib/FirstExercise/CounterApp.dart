import 'package:flutter/material.dart' show AppBar, BuildContext, Center, Column, ElevatedButton, MainAxisAlignment, Scaffold, SizedBox, State, StatefulWidget, Text, Widget;
import 'package:learn_flutter/FirstExercise/CounterDisplay.dart';
import 'package:learn_flutter/FirstExercise/CounterInheritedWidget.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});


  @override
  CounterAppState createState() {
    return CounterAppState();
  }
}

  class CounterAppState extends State<CounterApp>{
  int counter = 0;

  void incrementCounter(){
  setState((){
  counter++;
  });
  }

  // Caracteristici Principale ale Scaffold
  // Bară de Aplicație (AppBar):
  //
  // Permite adăugarea unei bare de aplicație în partea de sus a ecranului, care poate conține titluri, butoane și alte elemente.
  // Corp (body):
  //
  // Este zona principală a ecranului unde se plasează majoritatea widget-urilor. Poate conține orice widget, de la coloane și rânduri la liste și grile.
  // Bară de Navigare Inferioară (bottomNavigationBar):
  //
  // Permite adăugarea unei bare de navigare în partea inferioară a ecranului, care poate conține butoane de navigare între diferite secțiuni ale aplicației.
  // Meniu de Navigare (drawer):
  //
  // Este un panou lateral care poate fi deschis printr-o glisare sau un buton, adesea utilizat pentru navigarea în cadrul aplicației.
  // Snackbar (snackBar):
  //
  // Permite afișarea unor mesaje temporare pe ecran, care dispar după un anumit timp.
  // Floating Action Button (floatingActionButton):
  //
  // Este un buton plin de stil, care se află de obicei în colțul din dreapta jos al ecranului și este utilizat pentru acțiuni principale, cum ar fi adăugarea unui element.
  @override
  Widget build(BuildContext context){
  return CounterInheritedWidget(
  counter: counter,
  child: Scaffold(
  appBar : AppBar(
  title:const Text('Exemplu Inherited widgets'),
  ),
  body:Center(
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  CounterDisplay(),
  const SizedBox(height: 20),
  ElevatedButton(onPressed: incrementCounter, child: const Text('Incrementare'),
  ),
  ],
  ),
  ),

  ),
  );
  }

  }