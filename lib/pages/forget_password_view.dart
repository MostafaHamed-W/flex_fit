import 'package:flex_fit/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 18,
                      color: kLoginPageMainColor,
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'mostafa.hamde.w@gmail.com',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: kLoginPageMainColor,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: kLoginPageMainColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            width: Get.width * 0.7,
                            height: 50,
                            decoration: BoxDecoration(
                              color: kFirstColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Center(
                              child: Text(
                                'Submit',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Container(
                            width: Get.width * 0.7,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: kFirstColor,
                                )),
                            child: const Center(
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: Get.height * 0.55,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/black/14.jpg',
                ),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          height: Get.height * 0.55,
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                const SizedBox(height: 40),
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
                const Spacer(),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Forget Password',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Train and live the new experience of\nexercising at home',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
