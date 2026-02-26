import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/presentation/bloc/quiz/quiz_cubit.dart';

class AnswerOptionListTile extends StatelessWidget {
  final String answerOption;

  const AnswerOptionListTile({
    super.key,
    required this.answerOption,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = context.select(
      (QuizCubit quizCubit) => quizCubit.state.selectedAnswer == answerOption,
    );
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 2,
          color: isSelected ? Colors.blue : Colors.black,
        ),
      ),
      child: ListTile(
        onTap: () {
          context.read<QuizCubit>().selectAnswer(answerOption);
        },
        title: Text(
          answerOption,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
