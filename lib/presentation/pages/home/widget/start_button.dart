import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/core/widget/common_action_button.dart';
import 'package:quiz_app/presentation/bloc/quiz/quiz_cubit.dart';
import 'package:quiz_app/presentation/pages/question/question_page.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonActionButton(
      onPressed: () {
        context.read<QuizCubit>().resetQuiz();
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const QuestionPage()),
        );
      },
      text: 'Start',
    );
  }
}
