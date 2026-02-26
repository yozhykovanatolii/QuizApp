import 'package:flutter/material.dart';
import 'package:quiz_app/core/widget/common_action_button.dart';
import 'package:quiz_app/presentation/pages/history/history_page.dart';

class HistoryButton extends StatelessWidget {
  const HistoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const HistoryPage()),
        );
      },
      color: Colors.orange,
      text: 'History',
    );
  }
}
