import 'package:quiz_app/data/datasource/result_quiz_shared_preferences.dart';
import 'package:quiz_app/data/model/quiz_result.dart';

class ResultQuizRepository {
  final ResultQuizSharedPreferences _resultQuizSharedPreferences =
      ResultQuizSharedPreferences();

  Future<void> saveQuizResult(int totalCorrectAnswers) async {
    QuizResult quizResult = QuizResult.initial();
    quizResult = quizResult.copyWith(
      totalCorrectAnswers: totalCorrectAnswers,
    );
    await _resultQuizSharedPreferences.saveQuizResult(quizResult);
  }
}
