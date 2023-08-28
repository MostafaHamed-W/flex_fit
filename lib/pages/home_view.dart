import 'package:flex_fit/shared/styles/colors.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kThirdColor,
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
