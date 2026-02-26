import 'package:flutter/material.dart';

class HistoryProgressIndicator extends StatelessWidget {
  const HistoryProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Transform.scale(
        scale: 1.2,
        child: const CircularProgressIndicator(
          color: Colors.blue,
        ),
      ),
    );
  }
}
