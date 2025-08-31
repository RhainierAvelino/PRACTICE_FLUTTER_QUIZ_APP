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
      'Define the app’s layout and structure. asdghagdjhagdjhasdsaadasjkdjhk',
      'Handle user interactions and events',
    ],
  ),
];
