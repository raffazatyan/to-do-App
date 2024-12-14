import 'package:application/widgets/app_styles/app_styles.dart';
import 'package:application/widgets/app_styles/colors.dart';
import 'package:flutter/material.dart';

class FirstRowWidgets extends StatelessWidget {
  const FirstRowWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          // right: 16,
          // left: 16,
          // top: 16,
          ),
      child: SizedBox(
        height: rh(context) * 36,
        width: rw(context) * 326,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(
                  "Add task",
                  style: getStyle(
                      color: AppColors.colorFullBlack,
                      context: context,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: AppColors.colorBackgroundCloseButton008,
              ),
              height: rh(context) * 36,
              width: rw(context) * 36,
              child: CloseButton(
                style: ButtonStyle(
                  iconColor: const WidgetStatePropertyAll(
                      AppColors.colorBlackOpacity04),
                  iconSize: WidgetStatePropertyAll(rh(context) * 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
