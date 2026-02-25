import 'package:flutter/material.dart';

class ResultListTile extends StatelessWidget {
  const ResultListTile({super.key});

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
        onTap: () {},
        title: const Text(
          '15.02.2026',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: const Text(
          'Score: 4/5',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
