import 'package:application/widgets/app_styles/app_styles.dart';
import 'package:application/widgets/app_styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FeedBackButton extends StatelessWidget {
  const FeedBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.colorWhite,
          borderRadius: BorderRadius.circular(16),
        ),
        height: rh(context) * 136,
        width: rw(context) * 358,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
              child: SizedBox(
                height: rh(context) * 104,
                width: rw(context) * 204,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: SvgPicture.asset(
                          "assets/settings_images/comment_quote.svg"),
                    ),
                    SizedBox(
                      height: rh(context) * 5,
                    ),
                    Text(
                      "Feedback",
                      style: getStyle(
                        context: context,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Send feedback, suggestions, or bug reports.",
                      style: getStyle(
                          context: context,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.colorBlackOpacity04),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: rw(context) * 24,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 98 * rw(context),
                  height: 46 * rh(context),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.colorSettingsGreen,
                    ).copyWith(
                      overlayColor: WidgetStateProperty.all(
                        AppColors.colorSettingsGreenPressed,
                      ),
                    ),
                    child: Text(
                      "Send",
                      style: getStyle(
                          context: context,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.colorWhite),
                    ),
                  ),
                ),
                SizedBox(
                  height: rh(context) * 16,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
