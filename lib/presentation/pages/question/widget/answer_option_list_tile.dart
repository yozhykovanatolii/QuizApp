import 'package:flutter/material.dart';

class AnswerOptionListTile extends StatelessWidget {
  final String answerOption;

  const AnswerOptionListTile({
    super.key,
    required this.answerOption,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 2,
          color: Colors.blue,
        ),
      ),
      child: ListTile(
        onTap: () {},
        title: Text(
          answerOption,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: const Icon(
          color: Colors.blue,
          Icons.check_circle,
        ),
      ),
    );
  }
}
