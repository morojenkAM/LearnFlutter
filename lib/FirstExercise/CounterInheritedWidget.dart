import 'package:flutter/material.dart';


// Clasa InheritedWidget care partajează valoarea contorului
class CounterInheritedWidget extends InheritedWidget{
  final int counter;
  final Widget child;

  //constructor-> lista de parametri( required-parametrii sunt obligatorii,this atribuie valorii)
  //                                    :super-Apelează constructorul clasei părinte (InheritedWidget în acest caz).
  //                                     (când CounterInheritedWidget este creat, valoarea child va fi transmisă și clasei părinte InheritedWidget)
  CounterInheritedWidget({required this.counter, required this.child}) : super (child: child);


// Metodă pentru a determina dacă widget-urile dependente trebuie să fie reconstruite
@override

//tipul metodei->denumirea->( ne permite sa simulam ca in CounterInheritedWideget este old Widget
  bool updateShouldNotify(covariant CounterInheritedWidget oldWidget){
  //Сравнивает значение counter в старом виджете (oldWidget) с текущим значением counter.
    // Если значения различаются, метод возвращает true, что означает, что виджеты, зависящие
    // от этого InheritedWidget, должны быть обновлены.
  return oldWidget.counter != counter;
}
//static-> Returnează un obiect de tip CounterInheritedWidget sau null.
// Semnul întrebării (?) indică faptul că valoarea de returnare poate fi null
//metoda of este utilizată frecvent pentru a accesa instanțe ale widget-urilor din contextul arborelui widget-urilor
//Reprezintă contextul widget-ului în care metoda este apelată. Este folosit pentru a accesa arborele widget-urilor
static CounterInheritedWidget? of(BuildContext context){

  //context este parametrul metodei of și este de tip BuildContext.
  // Caută și returnează o instanță a unui InheritedWidget de tipul exact specificat (în acest caz, CounterInheritedWidget).
  //Indică faptul că metoda caută un widget de tipul exact CounterInheritedWidget. Genericul <CounterInheritedWidget> asigură că se caută exact acest tip și nu un supertip sau un subtip.
  return context.dependOnInheritedWidgetOfExactType<CounterInheritedWidget>();
}

}
