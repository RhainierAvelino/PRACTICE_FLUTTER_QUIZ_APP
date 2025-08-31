class QuizQuestions {
  final String question;
  final List<String> answers;

  List<String> getShuffledAnswers () {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }

  const QuizQuestions({
    required this.question,
    required this.answers,
  });
}
