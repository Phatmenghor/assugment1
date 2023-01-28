import 'package:flutter/material.dart';

import '../constants/constant_app.dart';

class ButtonBackground extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const ButtonBackground({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorApp.backgroundColor,
          side: const BorderSide(
            color: ColorApp.backgroundColor,
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
