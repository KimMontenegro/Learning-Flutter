import 'package:flutter/material.dart'; //unlocks a lot of feature

// void main() {
//   runApp(MyApp()); //normal function written by flutter team
// }
void main() => runApp(MyApp()); //if only 1 line of code

///extends - class will be based on some other class
///StatelessWidget - baseclass that allows to create own widget
///extends StatelessWidget - turn the whole class that will be used
///as widget in Flutter

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer Chosen!');
  }

  ///BuildContext - annotation provided by flutter
  ///build-method that returns a Widget
  //MaterialApp-special widget that should be returned
  @override //decorator-make the code clearer and cleaner
  Widget build(BuildContext context) {
    ///home: - argument; the core widget w/c flutter will bring
    ///on the screen
    ///MaterialApp is a class and yet we can pass data to it
    ///with a feature called constructor
    ///Scaffold()-creating a basic page design like colors

    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(
              questions.elementAt(0),
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion, //execute when user presses the button
            ),
            RaisedButton(
                child: Text('Answer 2'),
                onPressed: () => print('Answer 2 chosen!')

                ///() is anon
                ///It has no name and can only be used in the place
                ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                //..
                print('Answer 3 chosen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
