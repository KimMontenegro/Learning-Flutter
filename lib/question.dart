import 'package:flutter/material.dart';

///just stype "st" then choose StatelessWidget to automatically
///have certain code
class Question extends StatelessWidget {
  String questionText;

  ///first argument passed to question constructor
  ///will be stored in the questionText property
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
