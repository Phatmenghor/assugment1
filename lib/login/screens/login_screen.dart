import 'package:ass1/home/screens/home_screen.dart';
import 'package:ass1/login/screens/forgor_password_screen.dart';
import 'package:ass1/login/screens/register_account_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/button_background.dart';
import '../../components/button_background_icon.dart';
import '../../components/email_textformfield.dart';
import '../../components/password_textform.dart';
import '../../components/text_route.dart';
import '../../components/text_title.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                    // mainAxisAlignment: MainAxisAlignment.center,

                    children: const [
                      TextTitle(
                        title1: 'Login to',
                        title2: 'find the best food',
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
                      hintText: 'EMAIL',
                      imageIcons: 'assets/icons/email.png',
                      labelText: 'Enter Your Email Address',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const PasswordTextForm(
                      hintText: 'Password',
                      labelText: 'Enter Your Password',
                      imageIcon: 'assets/icons/password.png',
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          Get.to(const ForgotPasswordScreen());
                        },
                        child: const Text(
                          "Forget password?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    ButtonBackground(
                      title: 'Sign in',
                      onPressed: () {
                        Get.to(const HomeScreen());
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const ButtonBackgroundIcons(
                      text: 'Sign up with Facebook',
                      imageIcon: 'assets/icons/facebook.svg',
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    TextRoute(
                      text: "Don't have an account?",
                      textBold: 'Register',
                      onPressed: () {
                        Get.to(const RegisterAccountScreen());
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
