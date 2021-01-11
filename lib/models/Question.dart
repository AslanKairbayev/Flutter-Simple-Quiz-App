import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question({
    @required this.title,
    @required this.answers,
  });
}

class QuestionData {
  final _data = [
    Question(title: 'What is your favorite light saber color?', answers: [
      {'answer': 'Blue'},
      {'answer': 'Orange'},
      {'answer': 'Green'},
      {'answer': 'Red', 'isCorrect': 1},
    ]),
    Question(title: 'Who is the evil?', answers: [
      {'answer': 'Palpatine'},
      {'answer': 'Anakin Skywalker'},
      {'answer': 'Obi-Wan Kenobi', 'isCorrect': 1},
      {'answer': 'Akhsoka Tamo'},
    ]),
    Question(title: 'You can save only one of them', answers: [
      {'answer': 'Anakin Skywalker', 'isCorrect': 1},
      {'answer': 'Mace Windu'},
      {'answer': 'Padme Amidala'},
      {'answer': 'Count Doku'},
    ]),
    Question(title: 'What was the problem of Ben Solo?', answers: [
      {'answer': 'Just Pussy', 'isCorrect': 1},
      {'answer': 'Son of Han Solo'},
      {'answer': 'Defeated by a girl'},
      {'answer': 'Wearing a mask'},
    ]),
    Question(title: 'Who is Finn?', answers: [
      {'answer': 'Friend of Rey'},
      {'answer': 'Ex Storm Trooper'},
      {'answer': 'Real Hero'},
      {'answer': 'Friend Zone', 'isCorrect': 1},
    ]),
    Question(title: 'Why Han Solo love Leia Organa?', answers: [
      {'answer': 'Because she is Skywalker'},
      {'answer': 'Because she is Princess'},
      {'answer': 'Because she got Awesome Headsets', 'isCorrect': 1},
      {'answer': 'Because she is Beautiful'},
    ]),
    Question(title: 'Why General Grievous always coughing?', answers: [
      {'answer': 'He got flu'},
      {'answer': 'He got COVID-19', 'isCorrect': 1},
      {'answer': 'He thinks its cool'},
      {'answer': 'He likes ice cream'},
    ]),
    Question(title: '"Im your father Luke!"', answers: [
      {'answer': '"Then Im your son!"', 'isCorrect': 1},
      {'answer': '"Nooo, wait what?"'},
      {'answer': '"Yees!"'},
      {'answer': '"Liar!"'},
    ]),
    Question(title: 'Describe Dart Maul', answers: [
      {'answer': 'Red Bastard'},
      {'answer': 'Two-handed light saber'},
      {'answer': 'Pain in the ass'},
      {'answer': 'Eunuch', 'isCorrect': 1},
    ]),
  ];
  List<Question> get questions => [..._data];
}
