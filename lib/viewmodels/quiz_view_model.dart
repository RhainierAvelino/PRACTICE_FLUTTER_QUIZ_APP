import 'package:flutter/foundation.dart';
import 'package:quiz_app/data/questions.dart';

class QuizViewModel extends ChangeNotifier {
  int _currentIndex = 0;
  final List<String> _selectedAnswers = [];
  bool _isStarted = false;
  bool _isFinished = false;

  int get currentIndex => _currentIndex;
  bool get isStarted => _isStarted;
  bool get isFinished => _isFinished;
  int get totalQuestions => questions.length;
  List<String> get selectedAnswers => List.unmodifiable(_selectedAnswers);

  start() {
    _reset();
    _isStarted = true;
    _isFinished = false;
    notifyListeners();
  }

  void _reset() {
    _currentIndex = 0;
    _selectedAnswers.clear();
  }

  void answer(String answer) {
    if (_isFinished) return;
    _selectedAnswers.add(answer);
    if (_selectedAnswers.length == totalQuestions) {
      _isFinished = true;
    } else {
      _currentIndex++;
    }
    notifyListeners();
  }

  void restart() {
    _reset();
    _isStarted = false;
    _isFinished = false;
    notifyListeners();
  }

  int get correctCount {
    int count = 0;
    for (var i = 0; i < _selectedAnswers.length; i++) {
      if (_selectedAnswers[i] == questions[i].answers.first) count++;
    }
    return count;
  }

  double get progress => totalQuestions == 0 ? 0 : _selectedAnswers.length / totalQuestions;
}
