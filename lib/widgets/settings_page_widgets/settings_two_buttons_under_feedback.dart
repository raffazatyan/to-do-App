import 'package:application/widgets/app_styles/app_styles.dart';
import 'package:application/widgets/app_styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RowThowButtonsUnderFeedBack extends StatelessWidget {
  const RowThowButtonsUnderFeedBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        height: rh(context) * 95,
        width: rw(context) * 358,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.colorWhite,
                borderRadius: BorderRadius.circular(16),
              ),
              height: rh(context) * 94,
              width: rw(context) * 175,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: rh(context) * 16,
                    ),
                    SvgPicture.asset("assets/settings_images/lock.svg"),
                    SizedBox(
                      height: rh(context) * 8,
                    ),
                    Text(
                      "Privacy Policy",
                      style: getStyle(
                        context: context,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.colorBlack,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: rw(context) * 8,
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColors.colorWhite,
                borderRadius: BorderRadius.circular(16),
              ),
              height: rh(context) * 94,
              width: rw(context) * 175,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: rh(context) * 16,
                    ),
                    SvgPicture.asset("assets/settings_images/frame.svg"),
                    SizedBox(
                      height: rh(context) * 8,
                    ),
                    Text(
                      "Terms of Use",
                      style: getStyle(
                        context: context,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.colorBlack,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
