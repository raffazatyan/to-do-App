import 'package:application/widgets/app_styles/app_styles.dart';
import 'package:application/widgets/app_styles/colors.dart';
import 'package:flutter/material.dart';

class MainAndImageWidget extends StatelessWidget {
  const MainAndImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: rh(context) * 56,
            left: rw(context) * 16,
          ),
          child: Text(
            "Main",
            style: getStyle(
              context: context,
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: AppColors.colorBlackOpacity04,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 97,
            left: 98,
            right: 98,
          ),
          child: SizedBox(
            height: rh(context) * 175,
            width: rw(context) * 193,
            child: const Image(
              image: AssetImage("assets/first_screen_images/blueSmile.png"),
            ),
          ),
        ),
      ],
    );
  }
}

class HomeImageWhenTaskEmpty extends StatelessWidget {
  const HomeImageWhenTaskEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: rh(context) * 160,
      width: rw(context) * 363,
      child: Column(
        children: [
          SizedBox(
            height: rh(context) * 10,
          ),
          Icon(
            Icons.home,
            size: rh(context) * 80,
            color: AppColors.colorGreyForIndicator,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "You don't have any tasks added,\n add a task and it will appear here.",
            style: getStyle(
                context: context,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.colorBlackOpacity04),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
