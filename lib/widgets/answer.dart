import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String title;
  final isCorrect;
  final Function onChangeAnswer;

  Answer({Key key, this.title, this.isCorrect, this.onChangeAnswer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChangeAnswer(isCorrect),
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 5,
        ),
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black,
          //     blurRadius: 10,
          //     offset: Offset(1, 1),
          //   ),
          // ],
          borderRadius: BorderRadius.circular(30),

          gradient: LinearGradient(
            colors: [
              // Color(0XFF5337ff),
              // Color(0XFF8131ff),
              // Color(0XFFbd27ff),
              Colors.blue[900],
              Colors.red[900]
            ],
          ),
        ),
        child: Text(
          '$title',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
