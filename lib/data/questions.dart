import 'package:quiz_app/models/quiz_questions.dart';

/// Static quiz questions (first answer is correct)
const questions = [
  QuizQuestions(
    question: 'What are the main building blocks of Flutter UI?',
    answers: ['Widgets', 'Components', 'Blocks', 'Functions'],
  ),
  QuizQuestions(
    question: 'How are Flutter UIs built?',
    answers: [
      'By combining widgets in code',
      'By using a visual editor',
      'By defining a layout in XML',
      'By using a markup language',
    ],
  ),
  QuizQuestions(
    question: 'What\'s the purpose of a StatefulWidget?',
    answers: [
      'Update UI as data changes',
      'Update data as UI changes',
      'Define the app’s layout and structure',
      'Handle user interactions and events',
    ],
  ),
  QuizQuestions(
    question: 'What is the primary function of the build method in a widget?',
    answers: [
      'To create the widget’s UI',
      'To manage the widget’s state',
      'To handle user interactions',
      'To define the widget’s layout',
    ],
  ),

  // answer: It is called every time the widget needs to be rebuilt
  QuizQuestions(
    question: 'How does the build method work in a widget?',
    answers: [
      'It is called every time the widget needs to be rebuilt',
      'It is called only once when the widget is created',
      'It is called when the widget is first inserted into the widget tree',
      'It is called when the widget is removed from the widget tree',
    ],
  ),
  //answer: Initialize state before the widget is built
  QuizQuestions(
    question: 'What is the purpose of the initState method in a StatefulWidget?',
    answers: [
      'Initialize state before the widget is built',
      'Build the widget’s UI',
      'Update the widget’s state',
      'Dispose of resources when the widget is removed',
    ],
  ),
];
