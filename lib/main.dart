import 'package:flutter/material.dart';

void main(List<String> args) => runApp(const QuestionApp());

class QuestionAppState extends State<QuestionApp> {
  var selectedQuestion = 0;

  void answer() {
    setState(() {
      selectedQuestion++;
    });
    print(selectedQuestion);
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
            Text(questions[selectedQuestion]),
            ElevatedButton(
              onPressed: answer,
              child: const Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: answer,
              child: const Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: answer,
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
  QuestionAppState createState() {
    return QuestionAppState();
  }
}