import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/core/exception/quiz_results_not_found_exception.dart';
import 'package:quiz_app/data/repository/result_quiz_repository.dart';
import 'package:quiz_app/presentation/bloc/result_quiz/result_quiz_state.dart';

class ResultQuizCubit extends Cubit<ResultQuizState> {
  final ResultQuizRepository _resultQuizRepository = ResultQuizRepository();

  ResultQuizCubit() : super(ResultQuizInitialState());

  Future<void> fetchQuizResults() async {
    emit(ResultQuizLoadingState());
    try {
      final quizResults = await _resultQuizRepository.loadQuizResults();
      emit(ResultQuizSuccessState(quizResults));
    } on QuizResultsNotFoundException catch (exception) {
      emit(ResultQuizFailureState(exception.errorMessage));
    }
  }
}
