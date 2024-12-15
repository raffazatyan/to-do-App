import 'package:application/widgets/app_styles/app_styles.dart';
import 'package:flutter/material.dart';

class SettingsText extends StatelessWidget {
  const SettingsText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: rh(context) * 44,
      width: rw(context) * 390,
      child: Center(
        child: Text(
          "Settings",
          style: getStyle(
            context: context,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
