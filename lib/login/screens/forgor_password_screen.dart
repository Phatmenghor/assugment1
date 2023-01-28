import 'package:ass1/components/email_textformfield.dart';
import 'package:ass1/components/text_route.dart';
import 'package:ass1/components/text_title.dart';
import 'package:ass1/login/screens/login_screen.dart';
import 'package:ass1/login/screens/verification_code.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/button_background.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  padding: const EdgeInsets.only(top: 45),
                  child: Column(
                    children: const [
                      TextTitle(title1: "Forgot", title2: "Password?"),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const EmailTextForm(
                      hintText: "EMAIL",
                      labelText: "Enter Your Email Address",
                      imageIcons: "assets/icons/email.png",
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "Please provide your email to reset your password. please enter your don't \nshare any data to other people.",
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ButtonBackground(
                      title: 'Reset Password',
                      onPressed: () {
                        Get.to(const VerificationCode());
                        debugPrint("Hello");
                      },
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    TextRoute(
                      text: "Remember now?",
                      textBold: "Login here",
                      onPressed: () {
                        Get.to(const LoginScreen());
                      },
                    ),
                  ],
                ),
              ),
              const Expanded(
                flex: 1,
                child: Text(
                  "Need help?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
