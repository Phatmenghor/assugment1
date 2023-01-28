// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class EmailTextForm extends StatelessWidget {
  final String hintText;
  final String labelText;
  final String imageIcons;
  const EmailTextForm({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.imageIcons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
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
                imageIcons,
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

