import 'package:quiz_app/data/datasource/result_quiz_shared_preferences.dart';
import 'package:quiz_app/data/model/quiz_result.dart';

class ResultQuizRepository {
  final ResultQuizSharedPreferences resultQuizSharedPreferences;

  ResultQuizRepository(this.resultQuizSharedPreferences);

  Future<void> saveQuizResult(int totalCorrectAnswers) async {
    QuizResult quizResult = QuizResult.initial();
    quizResult = quizResult.copyWith(
      totalCorrectAnswers: totalCorrectAnswers,
    );
    await resultQuizSharedPreferences.saveQuizResult(quizResult);
  }

  Future<List<QuizResult>> loadQuizResults() async {
    return await resultQuizSharedPreferences.loadQuizResults();
  }
}
