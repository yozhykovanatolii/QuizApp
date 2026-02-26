import 'package:quiz_app/data/model/question.dart';

final List<Question> questions = [
  Question(
    text: 'Choose the correct sentence:',
    options: [
      'She don’t like coffee.',
      'She doesn’t likes coffee.',
      'She doesn’t like coffee.',
      'She not like coffee.',
    ],
    correctAnswer: 'She doesn’t like coffee.',
  ),
  Question(
    text: 'Yesterday, we ___ to the cinema.',
    options: [
      'go',
      'went',
      'gone',
      'going',
    ],
    correctAnswer: 'went',
  ),
  Question(
    text: 'She is interested __ learning Spanish.',
    options: [
      'on',
      'at',
      'in',
      'for',
    ],
    correctAnswer: 'in',
  ),
  Question(
    text: 'There isn’t __ milk left in the fridge.',
    options: [
      'many',
      'much',
      'few',
      'several',
    ],
    correctAnswer: 'much',
  ),
  Question(
    text: '__ you ever visited London?',
    options: [
      'Did',
      'Have',
      'Do',
      'Are',
    ],
    correctAnswer: 'Have',
  ),
];
