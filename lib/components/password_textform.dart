import 'package:flutter/material.dart';

class PasswordTextForm extends StatelessWidget {
  final String hintText;
  final String labelText;
  final String imageIcon;
  const PasswordTextForm({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.imageIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      autocorrect: false,
      enableSuggestions: false,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 35),
          child: Tab(
            icon: Image(
              image: AssetImage(
                imageIcon,
              ),
              height: 27,
              width: 27,
            ),
          ),
        ),
      ),
    );
  }
}
