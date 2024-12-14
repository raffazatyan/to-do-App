import 'package:application/widgets/welcome_app/welcome_model.dart';
import 'package:flutter/material.dart';
// import 'package:lastproject/widgets/welcome_app/welcome_model.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WelcomeModel(
          dir: MainAxisAlignment.spaceBetween,
          buttonIconName: "Get Started!",
          imageName: "assets/welcome_images/bounce.png",
          textUnderImage: "Start your journey to\n harmony today!",
          routName: "/bottomNavigationBar",
          textSmall: ""),
    );
  }
}
