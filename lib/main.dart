import 'package:flutter/material.dart';
import 'package:flutter_quiz/answer_option.dart';
import 'package:flutter_quiz/question.dart';

void main(List<String> args) => runApp(const QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;

  void _answer() {
    setState(() {
      _selectedQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> questions = [
      {
        'text': 'Qual o nome do "cachorro" do bob esponja?',
        'answers': [
          'Pluto',
          'Patriky',
          'Garry',
          'Plankton',
        ]
      },
      {
        'text': 'Qual o nome do filho do darth vader?',
        'answers': [
          'Lando',
          'Luke',
          'Gandalf',
          'Chewbaka',
        ]
      },
      {
        'text': 'Qual a cor do cavalo branco de Napoleão?',
        'answers': [
          'marrom',
          'branco',
          'Preto',
          'branca',
        ]
      }
    ];

    List<String> answers = questions[_selectedQuestion].cast()['answers'];
    List<Widget> answersList = answers
        .map((textAnswer) => AnswerOption(text: textAnswer, onSelect: _answer))
        .toList();

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text('Perguntas')),
          ),
          body: Column(
            children: <Widget>[
              Question(questions[_selectedQuestion]['text'].toString()),
              ...answersList
            ],
          )),
    );
  }
}

class QuestionApp extends StatefulWidget {
  const QuestionApp({super.key});

  @override
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}
