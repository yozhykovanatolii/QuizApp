import 'package:bloc/bloc.dart';
import 'package:quiz_app/data/model/question.dart';
import 'package:quiz_app/data/repository/quiz_repository.dart';
import 'package:quiz_app/data/repository/result_quiz_repository.dart';
import 'package:quiz_app/presentation/bloc/quiz/quiz_state.dart';

class QuizCubit extends Cubit<QuizState> {
  final QuizRepository _quizRepository = QuizRepository();
  final ResultQuizRepository _resultQuizRepository = ResultQuizRepository();
  List<Question> questions = [];

  QuizCubit() : super(QuizState.initial());

  Future<void> selectAnswer(String answer) async {
    final currentQuestion = questions[state.currentIndex];
    emit(state.copyWith(selectedAnswer: answer));

    int updatedTotalCorrectAnswers = state.totalCorrectAnswers;

    await Future.delayed(const Duration(milliseconds: 300));

    if (answer == currentQuestion.correctAnswer) {
      updatedTotalCorrectAnswers++;
    }

    if (state.currentIndex + 1 >= questions.length) {
      await _resultQuizRepository.saveQuizResult(updatedTotalCorrectAnswers);
      emit(
        state.copyWith(
          totalCorrectAnswers: updatedTotalCorrectAnswers,
          isCompleted: true,
        ),
      );
    } else {
      emit(
        state.copyWith(
          currentIndex: state.currentIndex + 1,
          totalCorrectAnswers: updatedTotalCorrectAnswers,
          selectedAnswer: "",
        ),
      );
    }
  }

  void resetQuiz() {
    questions = _quizRepository.loadQuestionsForQuiz();
    emit(QuizState.initial());
  }
}
