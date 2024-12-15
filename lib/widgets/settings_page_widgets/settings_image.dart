import 'package:application/widgets/app_styles/app_styles.dart';
import 'package:flutter/material.dart';

class SettingsImage extends StatelessWidget {
  const SettingsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: rh(context) * 155,
      width: double.infinity,
      child: const Center(
        child: Image(
          image: AssetImage(
            "assets/settings_images/settings.png",
          ),
        ),
      ),
    );
  }
}
