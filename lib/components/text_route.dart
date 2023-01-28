

import 'package:flutter/material.dart';

class TextRoute extends StatelessWidget {
  final String text;
  final String textBold;
  final VoidCallback onPressed;
  const TextRoute({
    Key? key,
    required this.text,
    required this.textBold,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(
          width: 9,
        ),
        GestureDetector(
          onTap: onPressed,
          child: Text(
            textBold,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
