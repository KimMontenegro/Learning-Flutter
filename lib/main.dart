import 'package:flutter/material.dart'; //unlocks a lot of feature
import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp()); //normal function written by flutter team
// }
void main() => runApp(MyApp()); //if only 1 line of code

//extends - class will be based on some other class
//StatelessWidget - baseclass that allows to create own widget
///extends StatelessWidget - turn the whole class that will be used
///as widget in Flutter

//StatefulWidget is a combination of two class
///This not recreated and is important for storing State
///so when the questionIndex changes and the external data pass
///into the widget itself changes only this is rewritten and rebuilt
///so in class MyAppState is not reset
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

//MyAppState - widgetname+State
//State is a generic class and is attached to the class above
//State<MyApp> is an indicator that State belongs to the class above
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0; //to change dynamically when pressing a button

  void _answerQuestion() {
    ///wrap the code when changing data that is reflected in UI
    ///wrap it using setState
    ///setState is a function/method provided by State class which we inherit
    ///this take an anon function w/ no arguments
    setState(() {
      ///to use old value in questionIndex & add 1 to it
      ///overwritten the questionIndex after calculating
      ///pass this to State class
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  //BuildContext - annotation provided by flutter
  //build-method that returns a Widget
  //MaterialApp-special widget that should be returned
  @override //decorator-make the code clearer and cleaner
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];

    ///home: - argument; the core widget w/c flutter will bring
    ///on the screen
    ///MaterialApp is a class and yet we can pass data to it
    ///with a feature called constructor
    //Scaffold()-creating a basic page design like colors
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            //replace Text to Question from question.dart
            Question(
              questions[_questionIndex],
            ),
            Answer(),
            Answer(),
            Answer(),
          ],
        ),
      ),
    );
  }
}
