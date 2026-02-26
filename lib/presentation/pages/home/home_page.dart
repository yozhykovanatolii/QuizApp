import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/core/widget/common_action_button.dart';
import 'package:quiz_app/presentation/bloc/quiz/quiz_cubit.dart';
import 'package:quiz_app/presentation/pages/history/history_page.dart';
import 'package:quiz_app/presentation/pages/question/question_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Quiz App',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 40),
              CommonActionButton(
                onPressed: () {
                  context.read<QuizCubit>().resetQuiz();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const QuestionPage()),
                  );
                },
                text: 'Start',
              ),
              const SizedBox(height: 20),
              CommonActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const HistoryPage()),
                  );
                },
                color: Colors.orange,
                text: 'History',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
