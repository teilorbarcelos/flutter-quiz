import 'package:flutter/material.dart';

void main(List<String> args) => runApp(const QuestionApp());

class QuestionApp extends StatelessWidget {
  const QuestionApp({super.key});

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
            Text(questions[0]),
            const ElevatedButton(
              onPressed: null,
              child: Text('Resposta 1'),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Resposta 2'),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Resposta 3'),
            )
          ],
        )
        ),
    );
  }
}