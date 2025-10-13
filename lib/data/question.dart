class QuizQuestion {
  final String text;
  final List<String> answers;

  const QuizQuestion(this.text, this.answers);

  List<String> getShuffledAnswer() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}

const questions = [
  QuizQuestion(
    'What is Flutter?',
    [
      'A UI toolkit for building apps',
      'A database system',
      'A programming language',
      'An operating system',
    ],
  ),
  QuizQuestion(
    'Who developed Flutter?',
    [
      'Google',
      'Facebook',
      'Microsoft',
      'Apple',
    ],
  ),
  QuizQuestion(
    'Which language is used to write Flutter apps?',
    [
      'Dart',
      'Kotlin',
      'Java',
      'Swift',
    ],
  ),
];
