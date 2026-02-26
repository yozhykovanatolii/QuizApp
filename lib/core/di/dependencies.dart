import 'package:get_it/get_it.dart';
import 'package:quiz_app/data/datasource/result_quiz_shared_preferences.dart';
import 'package:quiz_app/data/repository/quiz_repository.dart';
import 'package:quiz_app/data/repository/result_quiz_repository.dart';
import 'package:quiz_app/presentation/bloc/quiz/quiz_cubit.dart';
import 'package:quiz_app/presentation/bloc/result_quiz/result_quiz_cubit.dart';

class Dependencies {
  static final _getIt = GetIt.instance;

  static void setupDependencies() {
    _getIt.registerSingleton<ResultQuizSharedPreferences>(
      ResultQuizSharedPreferences(),
    );
    _setupRepositories();
    _setupCubit();
  }

  static void _setupRepositories() {
    _getIt.registerFactory<QuizRepository>(
      () => QuizRepository(),
    );
    _getIt.registerFactory<ResultQuizRepository>(
      () => ResultQuizRepository(
        _getIt<ResultQuizSharedPreferences>(),
      ),
    );
  }

  static void _setupCubit() {
    final quizRepository = _getIt<QuizRepository>();
    final resultQuizRepository = _getIt<ResultQuizRepository>();
    _getIt.registerFactory<QuizCubit>(
      () => QuizCubit(quizRepository, resultQuizRepository),
    );
    _getIt.registerFactory<ResultQuizCubit>(
      () => ResultQuizCubit(resultQuizRepository),
    );
  }
}
