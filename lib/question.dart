import 'package:flutter/material.dart';

///just stype "st" then choose StatelessWidget to automatically
///have certain code
class Question extends StatelessWidget {
  final String questionText;

  ///first argument passed to question constructor
  ///will be stored in the questionText property
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    //wrap another widget(Text) called Container
    //Container takes a child name argument
    return Container(
      ///infinity - will set and adjust based on the
      ///full width of the device
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
