import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/presentation/bloc/quiz/quiz_cubit.dart';

class ResultQuizText extends StatelessWidget {
  const ResultQuizText({super.key});

  @override
  Widget build(BuildContext context) {
    final totalCorrectAnswers = context.select(
      (QuizCubit quizCubit) => quizCubit.state.totalCorrectAnswers,
    );
    return Text(
      'Your results: $totalCorrectAnswers/5',
      style: const TextStyle(
        color: Colors.white,
        fontSize: 35,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
