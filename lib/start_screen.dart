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
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 270,
            color: const Color.fromARGB(182, 255, 255, 255),
          ),
          const SizedBox(height: 30),
           Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.tiltWarp(
              fontSize: 24,
              color: const Color.fromARGB(193, 255, 255, 255),
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: const BorderSide(color: Colors.white),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
            icon: const Icon(Icons.play_arrow),
            label: Text(
              'Start Quiz',
              style: GoogleFonts.tiltWarp(
                color: Colors.white,
                fontSize: 18,
                shadows: const [
                  Shadow(
                    color: Color.fromARGB(255, 57, 55, 55),
                    offset: Offset(2, 2),
                    blurRadius: 2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
