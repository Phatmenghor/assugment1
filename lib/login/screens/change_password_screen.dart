import 'package:ass1/components/button_background.dart';
import 'package:ass1/components/password_textform.dart';
import 'package:ass1/components/text_title.dart';
import 'package:ass1/login/screens/password_change_succesed.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.only(top: 45),
                  child: Column(
                    children: const [
                      TextTitle(
                        title1: "Change",
                        title2: "Password",
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const PasswordTextForm(
                      hintText: "NEW PASSWORD",
                      labelText: "Enter New Password",
                      imageIcon: "assets/icons/eye_pass.png",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const PasswordTextForm(
                      hintText: "NEW PASSWORD",
                      labelText: "Enter New Password",
                      imageIcon: "assets/icons/eye_pass.png",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Please provide your email to reset your password. please don't\nshare any data to other people.",
                      style: TextStyle(fontSize: 12),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    ButtonBackground(
                      title: "Change Password",
                      onPressed: () {
                        Get.to(const PasswordChangeSuccesed());
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
