import 'package:flex_fit/shared/styles/colors.dart';
import 'package:flex_fit/shared/xcore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/black/16.jpg',
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
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
              child: Column(
                children: [
                  RichText(
                    text: const TextSpan(
                      text: "HARD \t",
                      style: TextStyle(
                        fontSize: 30,
                        letterSpacing: 5,
                        fontFamily: 'bebas',
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: 'ELEMENT',
                          style: TextStyle(
                            color: kFirstColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(flex: 1),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About You',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      SizedBox(height: 5),
                      Text(
                          'We want to know more about you, follow the next\n steps to complete the information')
                    ],
                  ),
                  const SizedBox(height: 30),
                  ValueBuilder<int?>(
                    initialValue: 0,
                    builder: (value, updateFn) => Row(
                      children: [
                        OptionWidget(
                          onTap: () => updateFn(0),
                          state: 'I\'m\nBeginner',
                          detail: 'I have trained\nseveral times',
                          enable: value == 0 ? true : false,
                        ),
                        const SizedBox(width: 20),
                        OptionWidget(
                          onTap: () => updateFn(1),
                          state: 'I\'m\nExpert',
                          detail: 'I have trained\nmore times',
                          enable: value == 1 ? true : false,
                        )
                      ],
                    ),
                  ),

                  // manual option widget without using get x
                  // const Row(
                  //   children: [
                  //     CustomOptiopnWidget(
                  //       title: 'I\'m\nBeginner',
                  //       details: 'I have trained\nseveral times',
                  //     ),
                  //     SizedBox(width: 25),
                  //     CustomOptiopnWidget(
                  //         title: 'I\'m\nExpert', details: 'I have trained\nmore times'),
                  //   ],
                  // ),
                  const SizedBox(height: 17),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Container(
                          width: Get.width * 0.3,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Back',
                              style: TextStyle(
                                color: Colors.grey.withOpacity(0.7),
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          width: Get.width * 0.3,
                          height: 40,
                          decoration: BoxDecoration(
                            color: kFirstColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Text(
                              'Next',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomOptiopnWidget extends StatelessWidget {
  final String title;
  final String details;
  const CustomOptiopnWidget({
    super.key,
    required this.title,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.2,
      width: Get.height * 0.17,
      decoration: BoxDecoration(
        color: kSecondColor,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Text(
              title,
              style: const TextStyle(color: kFirstColor, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              details,
            ),
          ],
        ),
      ),
    );
  }
}
