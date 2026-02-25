import 'package:flutter/material.dart';
import 'package:quiz_app/core/widget/common_action_button.dart';

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
                onPressed: () {},
                text: 'Start',
              ),
              const SizedBox(height: 20),
              CommonActionButton(
                onPressed: () {},
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
