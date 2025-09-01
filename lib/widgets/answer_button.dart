import 'package:flutter/material.dart';

/// View (Widget) layer: A reusable button used to display an answer option.
/// Keeping it small & simple makes it easy to test and re-style later.
class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.onTap, required this.answerText});

  /// The text to show inside the button.
  final String answerText;

  /// Callback executed when the user taps this button.
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        child: Text(
          answerText,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
