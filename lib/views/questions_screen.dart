import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewmodels/quiz_view_model.dart';
import '../widgets/answer_button.dart';
import '../data/questions.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
  final vm = context.watch<QuizViewModel>();
  // Access current question via index from ViewModel
  final question = questions[vm.currentIndex];
  final answers = question.getShuffledAnswers();

    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 40, 24, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Question ${vm.currentIndex + 1} of ${vm.totalQuestions}',
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          const SizedBox(height: 12),
          LinearProgressIndicator(value: vm.progress),
          const SizedBox(height: 32),
          Text(
            question.question,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 24),
          ...answers.map(
            (a) => AnswerButton(
              answerText: a,
              onTap: () => vm.answer(a),
            ),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: TextButton(
              onPressed: vm.restart,
              child: const Text('Restart Quiz'),
            ),
          ),
        ],
      ),
    );
  }
}
