import 'package:application/widgets/app_styles/app_styles.dart';
import 'package:application/widgets/app_styles/colors.dart';
import 'package:flutter/material.dart';

class UnderImageText extends StatelessWidget {
  const UnderImageText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Text(
        "Application settings",
        style: getStyle(
          context: context,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.colorBlackOpacity04,
        ),
      ),
    );
  }
}
