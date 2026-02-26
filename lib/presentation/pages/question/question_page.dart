import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/presentation/bloc/quiz/quiz_cubit.dart';
import 'package:quiz_app/presentation/bloc/quiz/quiz_state.dart';
import 'package:quiz_app/presentation/pages/question/widget/answer_option_list_tile.dart';
import 'package:quiz_app/presentation/pages/results/results_page.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuizCubit, QuizState>(
      listener: (context, state) {
        if (state.isCompleted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => const ResultsPage()),
          );
        }
      },
      builder: (context, state) {
        final cubit = context.read<QuizCubit>();
        final question = cubit.questions[state.currentIndex];
        return Scaffold(
          backgroundColor: const Color(0xFFE8F0FE),
          appBar: AppBar(
            backgroundColor: const Color(0xFFE8F0FE),
            title: Text(
              'Question ${state.currentIndex + 1}/${cubit.questions.length}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
          ),
          body: SafeArea(
            minimum: const EdgeInsets.symmetric(horizontal: 30),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    question.text,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  ...question.options.map((option) {
                    return AnswerOptionListTile(
                      answerOption: option,
                    );
                  }),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
