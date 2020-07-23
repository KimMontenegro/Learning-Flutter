import 'package:flutter/material.dart'; //unlocks a lot of feature

void main() {
  runApp(MyApp()); //normal function written by flutter team
}

/*
extends - class will be based on some other class
StatelessWidget - baseclass that allows to create own widget
extends StatelessWidget - turn the whole class that will be used 
as widget in Flutter
*/
class MyApp extends StatelessWidget {
/*BuildContext - annotation provided by flutter
  build-method that returns a Widget
  MaterialApp-special widget that should be returned
*/
  Widget build(BuildContext context) {
    /*home: - argument; the core widget w/c flutter will bring
    on the screen
    MaterialApp is a class and yet we can pass data to it
    with a feature called constructor
    */
    return MaterialApp(
      home: Text('Hello!'),
    );
  }
}
