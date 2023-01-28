import 'package:ass1/components/button_background.dart';
import 'package:ass1/components/text_route.dart';
import 'package:ass1/components/text_title.dart';
import 'package:ass1/login/screens/change_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({super.key});

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
                child: Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Column(
                    children: const [
                      TextTitle(
                        title1: "Code",
                        title2: "Verification",
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 9,
                child: Column(
                  children: [
                    Form(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 68,
                            width: 64,
                            child: TextFormField(
                              onSaved: (pin1) {},
                              decoration: const InputDecoration(hintText: "0"),
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 68,
                            width: 64,
                            child: TextFormField(
                              decoration: const InputDecoration(hintText: "0"),
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 68,
                            width: 64,
                            child: TextFormField(
                              decoration: const InputDecoration(hintText: "0"),
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 68,
                            width: 64,
                            child: TextFormField(
                              decoration: const InputDecoration(hintText: "0"),
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ButtonBackground(
                      title: "Verification",
                      onPressed: () {
                        Get.to(const ChangePasswordScreen());
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextRoute(
                      text: "Didn't receive the code?",
                      textBold: "Re-send(32)",
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const Expanded(
                flex: 1,
                child: Text("Need help?"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
