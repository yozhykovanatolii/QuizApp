import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/presentation/bloc/result_quiz/result_quiz_cubit.dart';
import 'package:quiz_app/presentation/bloc/result_quiz/result_quiz_state.dart';
import 'package:quiz_app/presentation/pages/history/widget/history_progress_indicator.dart';
import 'package:quiz_app/presentation/pages/history/widget/result_list_tile.dart';
import 'package:quiz_app/presentation/pages/history/widget/results_error_text.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  void initState() {
    context.read<ResultQuizCubit>().fetchQuizResults();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8F0FE),
      appBar: AppBar(
        backgroundColor: const Color(0xFFE8F0FE),
        title: const Text(
          'History Results',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<ResultQuizCubit, ResultQuizState>(
        builder: (context, state) {
          if (state is ResultQuizFailureState) {
            return ResultsErrorText(
              errorMessage: state.errorMessage,
            );
          }
          if (state is ResultQuizSuccessState) {
            final quizResults = state.quizResults;
            return ListView.builder(
              itemCount: quizResults.length,
              itemBuilder: (context, index) {
                return ResultListTile(
                  completedAtText:
                      '${quizResults[index].completedAt.day.toString().padLeft(2, '0')}.${quizResults[index].completedAt.month.toString().padLeft(2, '0')}.${quizResults[index].completedAt.year}',
                  scoreText:
                      'Score: ${quizResults[index].totalCorrectAnswers}/5',
                );
              },
            );
          }
          return const HistoryProgressIndicator();
        },
      ),
    );
  }
}
