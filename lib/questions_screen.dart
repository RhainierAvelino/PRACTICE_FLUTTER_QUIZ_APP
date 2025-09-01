import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {

  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    setState(() {
      currentQuestionIndex++;
    });
    // Accept answer
    widget.onSelectAnswer(selectedAnswer);
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Question ${currentQuestionIndex + 1}/${questions.length}',
            style: GoogleFonts.openSans(fontSize: 14, color: Colors.black54),
            textAlign: TextAlign.center,
          ),
            const SizedBox(height: 16),
          Text(
            currentQuestion.question,
            style: GoogleFonts.openSans(fontSize: 22, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 28),
          ...currentQuestion.getShuffledAnswers().map((answer) => AnswerButton(
                answerText: answer,
                onTap: () => answerQuestion(answer),
              )),
        ],
      ),
    );
  }
}
