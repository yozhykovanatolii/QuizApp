import 'package:flutter/material.dart';
import 'package:quiz_app/core/widget/common_action_button.dart';
import 'package:quiz_app/presentation/pages/home/home_page.dart';
import 'package:quiz_app/presentation/pages/results/widget/result_quiz_text.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const ResultQuizText(),
              const SizedBox(height: 40),
              CommonActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const HomePage()),
                  );
                },
                text: 'Home',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
