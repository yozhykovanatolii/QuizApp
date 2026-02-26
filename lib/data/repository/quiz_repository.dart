import 'package:quiz_app/data/model/question.dart';
import 'package:quiz_app/data/questions_data.dart';

class QuizRepository {
  List<Question> loadQuestionsForQuiz() {
    questions.shuffle();
    return questions;
  }
}
