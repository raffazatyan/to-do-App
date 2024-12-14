import 'package:application/widgets/app_styles/app_styles.dart';
import 'package:application/widgets/app_styles/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isSelected;
  final double height;
  final double width;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.isSelected,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: rh(context) * height,
        width: rw(context) * width,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.colorBlue : AppColors.colorWhite,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            text,
            style: getStyle(
                context: context,
                color: isSelected
                    ? AppColors.colorWhite
                    : AppColors.colorBlackOpacity04,
                fontWeight: FontWeight.w500,
                fontSize: 16),
          ),
        ),
      ),
    );
  }
}
