import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key}); 


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'You did it!',
              style: GoogleFonts.lato(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'You answered X out of Y questions correctly!',
              style: GoogleFonts.lato(fontSize: 18),
            ),
            Text(
              'Here is a summary of your answers:',
              style: GoogleFonts.lato(fontSize: 18),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Restart the quiz
              },
              child: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
