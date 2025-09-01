import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/app_theme.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  String activeScreen = 'start';

  void startQuiz() => setState(() => activeScreen = 'questions');

  void restartQuiz() => setState(() {
        selectedAnswers = [];
        activeScreen = 'start';
      });

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() => activeScreen = 'results');
    } else {
      setState(() {}); // advance to next question handled inside QuestionsScreen state
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget;
    switch (activeScreen) {
      case 'questions':
        screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
        break;
      case 'results':
        screenWidget = ResultsScreen(
          selectedAnswers: selectedAnswers,
          onRestart: restartQuiz,
        );
        break;
      default:
        screenWidget = StartScreen(startQuiz);
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: buildTheme(),
        home: Scaffold(
          body: SafeArea(
            child: screenWidget,
          ),
        ));
  }
}
