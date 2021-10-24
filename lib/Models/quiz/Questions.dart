import 'Question.dart';
import 'option.dart';

final questions = [
  Question(
    text: 'What does U.S stand for?',
    options: [
      Option(code: 'A', text: 'United States', isCorrect: true),
      Option(code: 'B', text: 'United Services', isCorrect: false),
      Option(code: 'C', text: 'United Soccer', isCorrect: false),
      Option(code: 'D', text: 'United Songs', isCorrect: false),
    ],
    solution: 'U.S. stand for United States',
  ),
  Question(
    text: 'How much is 2 multiplied by 2',
    options: [
      Option(code: 'A', text: '1', isCorrect: false),
      Option(code: 'B', text: '2', isCorrect: false),
      Option(code: 'C', text: '4', isCorrect: true),
      Option(code: 'D', text: '3', isCorrect: false),
    ],
    solution: 'It is 2*2=4',
  ),
  Question(
    text: 'Sun rises in the ',
    options: [
      Option(code: 'A', text: 'East', isCorrect: true),
      Option(code: 'B', text: 'West', isCorrect: false),
      Option(code: 'C', text: 'South', isCorrect: false),
      Option(code: 'D', text: 'North', isCorrect: false),
    ],
    solution: 'Sun rises in the east and sets in west',
  ),
];
