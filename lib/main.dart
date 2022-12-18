import 'package:flutter/material.dart';
import 'package:flutter_quiz/question.dart';

void main(List<String> args) => runApp(const QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;

  void _answer() {
    setState(() {
      _selectedQuestion++;
    });
    print(_selectedQuestion);
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
      'Qual o nome do "cachorro" do bob esponja?',
      'Qual o nome do filho do darth vader?'
    ];
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Perguntas')),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_selectedQuestion]),
            ElevatedButton(
              onPressed: _answer,
              child: const Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: _answer,
              child: const Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: _answer,
              child: const Text('Resposta 3'),
            )
          ],
        )
        ),
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