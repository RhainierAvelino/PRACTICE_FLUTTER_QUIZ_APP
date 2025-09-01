import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: summaryData.length,
      itemBuilder: (context, index) {
        final data = summaryData[index];
        final isCorrect = data['user_answer'] == data['correct_answer'];
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${index + 1}.', style: const TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data['question'] as String,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Your answer: ${data['user_answer']}',
                      style: TextStyle(color: isCorrect ? Colors.blue : Colors.redAccent),
                    ),
                    if (!isCorrect)
                      Text(
                        'Correct: ${data['correct_answer']}',
                        style: const TextStyle(color: Colors.blueGrey),
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
