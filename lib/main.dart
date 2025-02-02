import 'package:flutter/material.dart'; //unlocks a lot of feature
import './quiz.dart';
import './result.dart';

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
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0; //to change dynamically when pressing a button
  var _totalScore = 0;
  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool =false;

    _totalScore += score;

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
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    }
  }

  //BuildContext - annotation provided by flutter
  //build-method that returns a Widget
  //MaterialApp-special widget that should be returned
  @override //decorator-make the code clearer and cleaner
  Widget build(BuildContext context) {
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
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore),
      ),
    );
  }
}
