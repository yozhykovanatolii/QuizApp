import 'package:flutter/material.dart';
import 'package:quiz_app/presentation/pages/question/widget/answer_option_list_tile.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8F0FE),
      appBar: AppBar(
        backgroundColor: const Color(0xFFE8F0FE),
        title: const Text(
          'Question 1/5',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: const SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Select the correct sentence:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              AnswerOptionListTile(
                answerOption: 'She don\'t like coffee.',
              ),
              SizedBox(height: 20),
              AnswerOptionListTile(
                answerOption: 'She doesn\'t likes coffee.',
              ),
              SizedBox(height: 20),
              AnswerOptionListTile(
                answerOption: 'She doesn\'t like coffee.',
              ),
              SizedBox(height: 20),
              AnswerOptionListTile(
                answerOption: 'She not like coffee.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
