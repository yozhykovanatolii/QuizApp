import 'package:flutter/material.dart';

class ResultListTile extends StatelessWidget {
  final String completedAtText;
  final String scoreText;

  const ResultListTile({
    super.key,
    required this.completedAtText,
    required this.scoreText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1.3,
          color: Colors.black,
        ),
      ),
      child: ListTile(
        title: Text(
          completedAtText,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: Text(
          scoreText,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
