class QuizResult {
  final DateTime completedAt;
  final int totalCorrectAnswers;

  QuizResult({
    required this.completedAt,
    required this.totalCorrectAnswers,
  });

  factory QuizResult.initial() {
    return QuizResult(
      completedAt: DateTime.now(),
      totalCorrectAnswers: 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'completedAt': completedAt.toIso8601String(),
      'totalCorrectAnswers': totalCorrectAnswers,
    };
  }

  factory QuizResult.fromMap(Map<String, dynamic> map) {
    return QuizResult(
      completedAt: DateTime.parse(map['completedAt']),
      totalCorrectAnswers: map['correctAnswers'],
    );
  }

  QuizResult copyWith({
    DateTime? completedAt,
    int? totalCorrectAnswers,
  }) {
    return QuizResult(
      completedAt: completedAt ?? this.completedAt,
      totalCorrectAnswers: totalCorrectAnswers ?? this.totalCorrectAnswers,
    );
  }
}
