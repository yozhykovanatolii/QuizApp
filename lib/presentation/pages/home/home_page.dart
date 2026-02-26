import 'package:flutter/material.dart';
import 'package:quiz_app/presentation/pages/home/widget/history_button.dart';
import 'package:quiz_app/presentation/pages/home/widget/start_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Quiz App',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 40),
              StartButton(),
              SizedBox(height: 20),
              HistoryButton(),
            ],
          ),
        ),
      ),
    );
  }
}
