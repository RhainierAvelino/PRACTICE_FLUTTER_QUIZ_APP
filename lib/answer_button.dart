import 'package:flutter/material.dart';
  
class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.onTap, required this.answerText});

  final String answerText;

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Handle answer selection
        onTap();
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,

      ),
      child: Text(answerText, style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
    );
  }
}
