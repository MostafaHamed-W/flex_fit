import 'package:flex_fit/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: Get.height * 0.55,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/black/12.jpg',
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    kThirdColor,
                    Colors.transparent,
                  ],
                ),
              ),
              height: Get.height * 0.55,
              width: Get.width,
              child: Column(
                children: [
                  const SizedBox(height: 60),
                  RichText(
                    text: const TextSpan(
                      text: 'FLEX\t',
                      style: TextStyle(
                        fontSize: 30,
                        letterSpacing: 5,
                        fontFamily: 'bebas',
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: 'FIT',
                          style: TextStyle(
                            color: kFirstColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
