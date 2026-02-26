import 'package:quiz_app/data/model/quiz_result.dart';

sealed class ResultQuizState {}

final class ResultQuizInitialState extends ResultQuizState {}

final class ResultQuizLoadingState extends ResultQuizState {}

final class ResultQuizSuccessState extends ResultQuizState {
  final List<QuizResult> quizResults;

  ResultQuizSuccessState(this.quizResults);
}

final class ResultQuizFailureState extends ResultQuizState {
  final String errorMessage;

  ResultQuizFailureState(this.errorMessage);
}
