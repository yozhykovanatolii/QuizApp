class QuizResultsNotFoundException implements Exception {
  final String errorMessage;

  QuizResultsNotFoundException([
    this.errorMessage = 'No quiz results were found. Take the quiz.',
  ]);
}
