import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonBackgroundIcons extends StatelessWidget {
  final String imageIcon;
  final String text;
  const ButtonBackgroundIcons({
    Key? key,
    required this.imageIcon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          side: const BorderSide(
            color: Colors.black,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(imageIcon),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
