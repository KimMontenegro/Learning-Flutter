import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  ///final Function - values stored has to be a pointer at a function
  ///it has to be a pointer
  final Function selectHandler;
  final String answerText;

  ///can get the _answerQuestion in main.dart and to be stored
  ///at Function above
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
