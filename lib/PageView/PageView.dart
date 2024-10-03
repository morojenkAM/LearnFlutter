


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: PageViewWidget(),
    );
  }
}

class PageViewWidget extends StatefulWidget {
  @override
  _PageViewWidgetState createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  final PageController controller = PageController(initialPage: 1); // Initialize PageController

  @override
  void dispose() {
    controller.dispose(); // Eliberează controllerul atunci când widget-ul este distrus
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  PageView(

      scrollDirection:Axis.vertical,// sa dam cu maosul insus
      // pageSnapping: false, //ca sa facem neintreruperea rolarii paginii
      // physics: BouncingScrollPhysics(), //ne permite sa iesim dupa granitele continutului
      // physics: NeverScrollableScrollPhysics(),//ne permita ca sa nu iasa din continut
      controller: controller,// ne permite sa opservam care pagina se afiseaza in pageView
      //      onPageChanged: (number){ //ne permite sa afisam in consola schibarile
      //      print("Page number $number");
      //  },

      children: <Widget>[
        Container(
          color: Colors.red,
          child: Center(
            child: Text( 'Stop!',
              style: TextStyle(color: Colors.black),),
          ),
        ),
        Container(
          color: Colors.orange,
          child: Center(
            child: Text('Ready?',
              style: TextStyle(color: Colors.black),),
          ),
        ),
        Container(
          color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Go!',
                style: TextStyle(color: Colors.black),
              ),
              ElevatedButton(
                child: Text('Reload'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Background color
                ),
                onPressed: (){
                  // controller.jumpToPage(0); // sa ma duc la prima pagina
                  controller.animateToPage(0,
                      duration: Duration(seconds: 1), curve: Curves.easeInBack);
                },
              ),
            ],
          ),
        )
      ],
    ),
    );
  }

}