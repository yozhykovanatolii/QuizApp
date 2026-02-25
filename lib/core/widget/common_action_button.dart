import 'package:flutter/material.dart';

class CommonActionButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  final Color color;

  const CommonActionButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.color = Colors.green,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: MediaQuery.of(context).size.height * 0.06,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: const WidgetStatePropertyAll(10),
          backgroundColor: WidgetStatePropertyAll(color),
          foregroundColor: const WidgetStatePropertyAll(Colors.black),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 23,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
