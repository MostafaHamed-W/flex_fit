import 'package:flex_fit/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            BodyHeader(),
            BodyForm(),
            ActionButton(),
          ],
        ),
      ),
    );
  }
}

class BodyForm extends StatelessWidget {
  const BodyForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SignUpText(text: 'Name'),
            SignUpTextField(hintText: 'Mostafa'),
            SizedBox(height: 10),
            SignUpText(text: 'Email'),
            SignUpTextField(hintText: 'mostafa.hamed.w@gmail.com'),
            SizedBox(height: 10),
            SignUpText(text: 'Phone'),
            SignUpTextField(hintText: '+201022212981'),
            SizedBox(height: 10),
            SignUpText(text: 'Password'),
            SignUpTextField(hintText: '********'),
            SizedBox(height: 10),
            SignUpText(text: 'Confirm password'),
            SignUpTextField(hintText: '********'),
            SizedBox(height: 30),
            Text(
              'By signing up, i agree to the flex fit user\nAgreement and privacy policy',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpText extends StatelessWidget {
  const SignUpText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 18, color: kLoginPageMainColor),
    );
  }
}

class SignUpTextField extends StatelessWidget {
  const SignUpTextField({
    super.key,
    required this.hintText,
  });
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: kLoginPageMainColor,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: kLoginPageMainColor,
          ),
        ),
      ),
    );
  }
}

class BodyHeader extends StatelessWidget {
  const BodyHeader({
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
                  'assets/images/black/4.jpg',
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
                        text: "FIT",
                        style: TextStyle(
                          color: kFirstColor,
                        ),
                      ),
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
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Train and live the new experience of\nexercising at home',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: Container(
            height: 50,
            width: Get.width * 0.7,
            decoration: BoxDecoration(
              color: kFirstColor,
              borderRadius: BorderRadius.circular(7),
            ),
            child: const Center(
              child: Text(
                'Register',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        TextButton(
          onPressed: () {
            Get.back();
          },
          child: Container(
            height: 50,
            width: Get.width * 0.7,
            decoration: BoxDecoration(
              border: Border.all(
                color: kFirstColor,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(7),
            ),
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
        const SizedBox(height: 40),
      ],
    );
  }
}
