import 'package:flutter/material.dart';
import 'package:flutter_quiz/answer_option.dart';
import 'package:flutter_quiz/question.dart';

class QuestionsList extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int selectedQuestion;
  final bool hasSelectedQuestion;
  final void Function() onAnswer;

  const QuestionsList(
      {required this.questions,
      required this.selectedQuestion,
      required this.hasSelectedQuestion,
      required this.onAnswer,
      super.key});

  @override
  Widget build(BuildContext context) {

  List<String> answers = hasSelectedQuestion
      ? questions[selectedQuestion].cast()['answers']
      : [];

  List<Widget> answersList = answers
        .map((textAnswer) => AnswerOption(text: textAnswer, onSelect: onAnswer))
        .toList();

    return Column(children: <Widget>[
      Question(questions[selectedQuestion]['text'].toString()),
      ...answersList
    ]);
  }
}
