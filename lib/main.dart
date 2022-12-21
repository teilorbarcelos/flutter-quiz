import 'package:flutter/material.dart';
import 'package:flutter_quiz/questions_list.dart';
import 'package:flutter_quiz/result.dart';

void main(List<String> args) => runApp(const QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;
  final List<Map<String, Object>> _questions = [
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

  bool get _hasSelectedQuestion {
    return _selectedQuestion < _questions.length;
  }

  void _answer() {
    if (_hasSelectedQuestion) {
      setState(() {
        _selectedQuestion++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Perguntas')),
      ),
      body: _hasSelectedQuestion
          ? QuestionsList(
              questions: _questions,
              selectedQuestion: _selectedQuestion,
              hasSelectedQuestion: _hasSelectedQuestion,
              onAnswer: _answer)
          : const Result(),
    ));
  }
}

class QuestionApp extends StatefulWidget {
  const QuestionApp({super.key});

  @override
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}
