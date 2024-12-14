import 'package:application/widgets/app_styles/app_styles.dart';
import 'package:application/widgets/app_styles/colors.dart';
import 'package:flutter/material.dart';

class UnderFullindicatorText extends StatelessWidget {
  const UnderFullindicatorText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            "Tasks",
            style: getStyle(
              context: context,
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: AppColors.colorBlackOpacity04,
            ),
          ),
        ),
      ],
    );
  }
}
