import 'package:application/widgets/app_styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../app_styles/app_styles.dart';

class WelcomeModel extends StatelessWidget {
  final String imageName;
  final String textUnderImage;
  final String textSmall;
  final String routName;
  final String buttonIconName;
  final MainAxisAlignment dir;

  const WelcomeModel({
    super.key,
    required this.imageName,
    required this.textUnderImage,
    required this.routName,
    required this.textSmall,
    required this.buttonIconName,
    required this.dir,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 87.11, left: 87.11, top: 192),
          child: Image(
            image: AssetImage(imageName),
          ),
        ),
        SizedBox(
          height: rh(context) * 64,
        ),
        Column(
          children: [
            Text(
              textAlign: TextAlign.center,
              textUnderImage,
              style: getStyle(
                context: context,
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: rh(context) * 16,
            ),
            Text(
              textSmall,
              textAlign: TextAlign.center,
              style: getStyle(
                context: context,
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: AppColors.colorBlackOpacity04,
              ),
            ),
          ],
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {
                if (routName != "") {
                  Navigator.of(context).pushNamed(routName);
                }
                if (routName.contains("/appFirstScreen")) {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/appFirstScreen',
                    (Route<dynamic> route) => false,
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(
                  200 * rw(context),
                  56 * rh(context),
                ),
                maximumSize: Size(
                  200 * rw(context),
                  56 * rh(context),
                ),
                backgroundColor: AppColors.colorButtonBeforePressed,
              ).copyWith(
                overlayColor: WidgetStateProperty.all(
                  AppColors.colorButtonOnPressed,
                ),
              ),
              child: Row(
                mainAxisAlignment: dir,
                children: [
                  Text(
                    buttonIconName,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.colorWhite,
                    ),
                  ),
                  SvgPicture.asset("assets/welcome_images/arrow.svg"),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: rh(context) * 84)
      ],
    );
  }
}
