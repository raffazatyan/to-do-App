import 'package:application/widgets/app_styles/app_styles.dart';
import 'package:application/widgets/app_styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeSecondScreen extends StatelessWidget {
  const WelcomeSecondScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 87.11, left: 87.11, top: 192),
            child: Image(
              image: AssetImage("assets/welcome_images/star.png"),
            ),
          ),
          SizedBox(
            height: rh(context) * 64,
          ),
          Column(
            children: [
              Text(
                textAlign: TextAlign.center,
                "Feature overview",
                style: getStyle(
                  context: context,
                  fontSize: rh(context) * 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: rh(context) * 17,
              ),
              textStyleMethod(
                  context: context,
                  text: "Task scheduling",
                  assetName: "assets/welcome_images/vector.svg"),
              SizedBox(
                height: rh(context) * 4,
              ),
              textStyleMethod(
                  context: context,
                  text: " Health tracker",
                  assetName: "assets/welcome_images/heart.svg"),
              SizedBox(
                height: rh(context) * 4,
              ),
              textStyleMethod(
                  context: context,
                  text: "Habit tracking",
                  assetName: "assets/welcome_images/wallet.svg"),
            ],
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/thrd");
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200 * rw(context), 56 * rh(context)),
                  maximumSize: Size(200 * rw(context), 56 * rh(context)),
                  backgroundColor: AppColors.colorButtonBeforePressed,
                ).copyWith(
                  overlayColor: WidgetStateProperty.all(
                    AppColors.colorButtonOnPressed,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Next",
                      style: TextStyle(
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
          SizedBox(
            height: rh(context) * 88,
          )
        ],
      ),
    );
  }

  Row textStyleMethod(
      {required String text,
      required assetName,
      required BuildContext context}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(assetName),
        SizedBox(
          width: rw(context) * 8,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: getStyle(
              context: context,
              fontWeight: FontWeight.w500,
              fontSize: rh(context) * 16,
              color: AppColors.colorBlackOpacity04),
        ),
      ],
    );
  }
}
