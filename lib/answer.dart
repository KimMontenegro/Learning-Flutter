import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  ///final Function - values stored has to be a pointer at a function
  ///it has to be a pointer
  final Function selectHandler;

  ///can get the _answerQuestion in main.dart and to be stored
  ///at Function above
  Answer(this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text('Answer 1'),
        onPressed: selectHandler,
      ),
    );
  }
}
