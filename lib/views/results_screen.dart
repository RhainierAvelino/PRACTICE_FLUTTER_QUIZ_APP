import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewmodels/quiz_view_model.dart';
import '../widgets/questions_summary.dart';
import '../data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<QuizViewModel>();

    final total = vm.totalQuestions;
    final correct = vm.correctCount;
    final percent = total == 0 ? 0 : (correct / total * 100).round();

    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 40, 24, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Quiz Complete',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            'You answered $correct of $total correctly ($percent%)',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          LinearProgressIndicator(value: vm.correctCount / (vm.totalQuestions == 0 ? 1 : vm.totalQuestions)),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _StatChip(label: 'Total', value: '$total'),
              _StatChip(label: 'Correct', value: '$correct'),
              _StatChip(label: 'Wrong', value: '${total - correct}'),
            ],
          ),
          const SizedBox(height: 24),
          Expanded(
            child: QuestionsSummary(
              summaryData: List.generate(vm.totalQuestions, (index) {
                return {
                  'question': questions[index].question,
                  'user_answer': vm.selectedAnswers[index],
                  'correct_answer': questions[index].answers.first,
                };
              }),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: vm.restart,
            child: const Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}

class _StatChip extends StatelessWidget {
  const _StatChip({required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.black54)),
      ],
    );
  }
}
