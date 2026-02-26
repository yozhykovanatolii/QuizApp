class QuizState {
  final int currentIndex;
  final int totalCorrectAnswers;
  final String selectedAnswer;
  final bool isCompleted;

  QuizState({
    required this.currentIndex,
    required this.totalCorrectAnswers,
    required this.selectedAnswer,
    required this.isCompleted,
  });

  factory QuizState.initial() {
    return QuizState(
      currentIndex: 0,
      totalCorrectAnswers: 0,
      selectedAnswer: "",
      isCompleted: false,
    );
  }

  QuizState copyWith({
    int? currentIndex,
    int? totalCorrectAnswers,
    String? selectedAnswer,
    bool? isCompleted,
  }) {
    return QuizState(
      currentIndex: currentIndex ?? this.currentIndex,
      totalCorrectAnswers: totalCorrectAnswers ?? this.totalCorrectAnswers,
      selectedAnswer: selectedAnswer ?? this.selectedAnswer,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}
