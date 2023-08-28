import 'package:flex_fit/routes/app_pages.dart';
import 'package:flex_fit/services/firebase_auth.dart';
import 'package:flex_fit/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberContrtoller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmController = TextEditingController();
  bool isLoading = false;

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneNumberContrtoller.dispose();
    passwordController.dispose();
    passwordConfirmController.dispose();

    super.dispose();
  }

  void signUpUser() async {
    isLoading = true;
    String result = await FirebaseAuthMethods().signUp(
      context: context,
      email: emailController.text,
      password: passwordController.text,
    );
    if (result == 'success') {
      setState(() {
        isLoading = false;
      });
      Get.toNamed(Routes.LOGIN);
    } else {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
        child: isLoading == true
            ? SizedBox(
                height: Get.height,
                width: Get.width,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              )
            : Column(
                children: [
                  const BodyHeader(),
                  BodyForm(
                    nameController: nameController,
                    emailController: emailController,
                    phoneNumberContrtoller: phoneNumberContrtoller,
                    passwordController: passwordController,
                    passwordConfirmController: passwordConfirmController,
                  ),
                  ActionButton(
                    onPressed: () {
                      setState(() {
                        isLoading = true;
                      });
                      signUpUser();
                    },
                  ),
                ],
              ),
      ),
    );
  }
}

class BodyForm extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController phoneNumberContrtoller;
  final TextEditingController passwordController;
  final TextEditingController passwordConfirmController;
  const BodyForm({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.nameController,
    required this.phoneNumberContrtoller,
    required this.passwordConfirmController,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SignUpText(text: 'Name'),
            SignUpTextField(hintText: 'Mostafa', controller: nameController),
            const SizedBox(height: 10),
            const SignUpText(text: 'Email'),
            SignUpTextField(hintText: 'mostafa.hamed.w@gmail.com', controller: emailController),
            const SizedBox(height: 10),
            const SignUpText(text: 'Phone'),
            SignUpTextField(hintText: '+201022212981', controller: phoneNumberContrtoller),
            const SizedBox(height: 10),
            const SignUpText(text: 'Password'),
            SignUpTextField(
              hintText: '********',
              controller: passwordController,
              obscureText: true,
            ),
            const SizedBox(height: 10),
            const SignUpText(text: 'Confirm password'),
            SignUpTextField(
              hintText: '********',
              controller: passwordConfirmController,
              obscureText: true,
            ),
            const SizedBox(height: 30),
            const Text(
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
  final TextEditingController? controller;
  final bool obscureText;
  const SignUpTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.obscureText = false,
  });
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white.withOpacity(0.8)),
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
  final void Function()? onPressed;
  const ActionButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: onPressed,
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
