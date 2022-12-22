import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final void Function() onReset;
  const Result({required this.score, required this.onReset, super.key});
  String get resultText {
    if (score < 16) {
      return 'Muito ruim hein!';
    } else if (score < 24) {
      return 'Até que não tá mal...';
    } else {
      return 'Cara tu é bom hein!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Column(
            children: [
              Text(
                resultText,
                style: const TextStyle(fontSize: 28),
              ),
              Text(
                'Sua pontuação é $score',
                style: const TextStyle(fontSize: 28),
              ),
            ],
          ),
        ),
        TextButton(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
            onPressed: onReset,
            child: const Text(
              'Reiniciar!',
              style: TextStyle(fontSize: 18),
            ))
      ],
    );
  }
}
