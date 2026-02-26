import 'package:flutter/material.dart';
import 'package:quiz_app/presentation/pages/results/widget/home_button.dart';
import 'package:quiz_app/presentation/pages/results/widget/result_quiz_text.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ResultQuizText(),
              SizedBox(height: 30),
              HomeButton(),
            ],
          ),
        ),
      ),
    );
  }
}
