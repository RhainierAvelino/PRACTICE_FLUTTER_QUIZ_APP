import 'package:flutter/material.dart';
import 'package:quiz_app/views/start_screen.dart';
import 'package:quiz_app/views/questions_screen.dart';
import 'package:quiz_app/views/results_screen.dart';
import 'package:quiz_app/theme/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/viewmodels/quiz_view_model.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => QuizViewModel(),
      child: Builder(
        builder: (context) {
          final vm = context.watch<QuizViewModel>();
          final Widget screen = !vm.isStarted
              ? StartScreen(vm.start)
              : vm.isFinished
                  ? const ResultsScreen()
                  : const QuestionsScreen();

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: buildTheme(),
            home: Scaffold(
              body: SafeArea(child: screen),
            ),
          );
        },
      ),
    );
  }
}
