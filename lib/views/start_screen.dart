import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 200, color: Colors.black),
          const SizedBox(height: 24),
          Text(
            'Flutter Quiz',
            style: GoogleFonts.openSans(
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Test your knowledge',
            style: GoogleFonts.openSans(fontSize: 16, color: Colors.black54),
          ),
          const SizedBox(height: 32),
          SizedBox(
            width: 220,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 32),
                textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              onPressed: startQuiz,
              child: const Text('Start'),
            ),
          ),
        ],
      ),
    );
  }
}
