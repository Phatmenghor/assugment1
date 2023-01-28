import 'package:ass1/components/email_textformfield.dart';
import 'package:ass1/components/password_textform.dart';
import 'package:ass1/components/text_route.dart';
import 'package:ass1/components/text_title.dart';
import 'package:ass1/login/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/button_background.dart';
import '../../components/button_background_icon.dart';

class RegisterAccountScreen extends StatelessWidget {
  const RegisterAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Column(
                    children: const [
                      TextTitle(
                        title1: "Register",
                        title2: "New Account",
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Column(
                  children: [
                    const EmailTextForm(
                      hintText: "FULL NAME",
                      labelText: "Enter Your Name",
                      imageIcons: "assets/icons/name.png",
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                    const EmailTextForm(
                      hintText: "EMAIL",
                      labelText: "Enter Your Email",
                      imageIcons: "assets/icons/email.png",
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                    const EmailTextForm(
                      hintText: "PHONE",
                      labelText: "Enter Phone Number",
                      imageIcons: "assets/icons/phone.png",
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                    const PasswordTextForm(
                      hintText: "FULL NAME",
                      labelText: "Enter Password",
                      imageIcon: 'assets/icons/password.png',
                    ),
                    const Spacer(
                      flex: 4,
                    ),
                     ButtonBackground(
                      title: 'Register', onPressed: () { },
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                    const ButtonBackgroundIcons(
                      text: 'Sign up with Facebook',
                      imageIcon: 'assets/icons/facebook.svg',
                    ),
                    const Spacer(
                      flex: 4,
                    ),
                    TextRoute(
                      text: "Already have an account?",
                      textBold: "Login",
                      onPressed: () {
                        Get.to(const LoginScreen());
                      },
                    ),
                    const Spacer(
                      flex: 5,
                    ),
                    Expanded(
                      flex: 7,
                      child: Container(),
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
