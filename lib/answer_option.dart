import 'package:flutter/material.dart';

class AnswerOption extends StatelessWidget {
  final String label;
  final void Function() onSelect;

  const AnswerOption({super.key, required this.label, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(color: Colors.white),
          backgroundColor: Colors.blue
        ),
        onPressed: onSelect,
        child: Text(label),
      ),
    );
  }
}
