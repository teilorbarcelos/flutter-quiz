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
        {'label': 'Pluto', 'value': 3},
        {'label': 'Patriky', 'value': 7},
        {'label': 'Garry', 'value': 10},
        {'label': 'Plankton', 'value': 5},
      ]
    },
    {
      'text': 'Qual o nome do filho do darth vader?',
      'answers': [
        {'label': 'Lando', 'value': 7},
        {'label': 'Luke', 'value': 10},
        {'label': 'Gandalf', 'value': 3},
        {'label': 'Chewbaka', 'value': 5},
      ]
    },
    {
      'text': 'Qual a cor do cavalo branco de Napoleão?',
      'answers': [
        {'label': 'marrom', 'value': 3},
        {'label': 'branco', 'value': 7},
        {'label': 'Preto', 'value': 5},
        {'label': 'branca', 'value': 10},
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
