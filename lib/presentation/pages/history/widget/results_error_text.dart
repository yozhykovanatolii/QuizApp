import 'package:flutter/material.dart';

class ResultsErrorText extends StatelessWidget {
  final String errorMessage;

  const ResultsErrorText({
    super.key,
    required this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
