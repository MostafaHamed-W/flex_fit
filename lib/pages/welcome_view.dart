import 'package:flex_fit/routes/app_pages.dart';
import 'package:flex_fit/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/black/9.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: Get.height,
            width: Get.width,
            color: kThirdColor.withOpacity(0.7),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 55),
              child: Column(
                children: [
                  RichText(
                    text: const TextSpan(
                      text: "FLEX\t",
                      style: TextStyle(
                        fontFamily: 'bebas',
                        fontSize: 30,
                        letterSpacing: 5,
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
                  const Spacer(),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        SizedBox(height: 17),
                        Text('Train and live the new experience of \n exercising at home')
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.ABOUT);
                    },
                    child: Container(
                      height: 50,
                      width: Get.width * 0.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: kFirstColor,
                      ),
                      child: const Center(
                        child: Text(
                          'Try Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.LOGIN);
                    },
                    child: Container(
                      height: 50,
                      width: Get.width * 0.7,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
