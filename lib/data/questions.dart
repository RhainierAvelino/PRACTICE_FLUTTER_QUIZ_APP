import 'package:quiz_app/models/quiz_questions.dart';

const questions = [
  QuizQuestions(
    //answer: Widgets
    question: 'What are the main building blocks of Flutter UI?',
    answers: ['Widgets', 'Components', 'Blocks', 'Functions'],
  ),
  //answer: By combining widgets in code
  QuizQuestions(
    question: 'How are Flutter UIs built?',
    answers: [
      'By combining widgets in code',
      'By using a visual editor',
      'By defining a layout in XML',
      'By using a markup language',
    ],
  ),
  //answer: Update UI as data changes
  QuizQuestions(
    question: 'What\'s the purpose of a StatefulWidget?',
    answers: [
      'Update UI as data changes',
      'Update data as UI changes',
      'Define the app’s layout and structure',
      'Handle user interactions and events',
    ],
  ),
  //answer: Manage local state in the widget
  QuizQuestions(
    question: 'What is the primary function of the build method in a widget?',
    answers: [
      'To create the widget’s UI',
      'To manage the widget’s state',
      'To handle user interactions',
      'To define the widget’s layout',
    ],
  ),

  //answer: It is called every time the widget needs to be rebuilt
  QuizQuestions(
    question: 'How does the build method work in a widget?',
    answers: [
      'It is called every time the widget needs to be rebuilt',
      'It is called only once when the widget is created',
      'It is called when the widget is first inserted into the widget tree',
      'It is called when the widget is removed from the widget tree',
    ],
  ),
];
