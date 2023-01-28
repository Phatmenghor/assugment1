import 'package:ass1/components/text_title.dart';
import 'package:ass1/home/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/constant_app.dart';

class PasswordChangeSuccesed extends StatelessWidget {
  const PasswordChangeSuccesed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: const TextTitle(
                              title1: "Password", title2: "changed!"),
                        ),
                      ],
                    ),
                  ],
                )),
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/successed.png",
                    fit: BoxFit.cover,
                    width: 284,
                    height: 312,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  SizedBox(
                    // width: double.infinity,
                    // height: 15,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorApp.backgroundColor,
                        // side: const BorderSide(
                        //   color: ColorApp.backgroundColor,
                        // ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(const HomeScreen());
                          },
                          child: const Text(
                            "Get started...",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
