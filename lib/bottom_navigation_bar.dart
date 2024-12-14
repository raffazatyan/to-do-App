import 'dart:io';

import 'package:application/widgets/app_styles/app_styles.dart';
import 'package:application/widgets/app_styles/colors.dart';
import 'package:application/widgets/first_screen_widgets/first_screen.dart';
import 'package:application/widgets/settings_page_widgets/settings_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int curentIndex = 0;

  List<Widget> screens = [
    const FirstScreen(),
    const SettingsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[curentIndex],
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: Platform.isAndroid ? 20 : 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                curentIndex = 0;
                setState(
                  () {},
                );
              },
              child: Container(
                height: rh(context) * 40,
                width: rw(context) * 64,
                decoration: BoxDecoration(
                  color: curentIndex == 0
                      ? AppColors.colorBlue
                      : AppColors.colorWhite,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Icon(
                    Icons.home,
                    color: curentIndex == 0
                        ? AppColors.colorWhite
                        : AppColors.colorBlackOpacity04,
                  ),
                ),
              ),
            ),
            GestureDetector(
                onTap: () {
                  curentIndex = 1;
                  setState(() {});
                },
                child: Container(
                  height: rh(context) * 40,
                  width: rw(context) * 64,
                  decoration: BoxDecoration(
                    color: curentIndex == 1
                        ? AppColors.colorSettingsGreen
                        : AppColors.colorWhite,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: SizedBox(
                      child: SvgPicture.asset(
                        "assets/settings_images/settings_icon_small.svg",
                        colorFilter: ColorFilter.mode(
                          curentIndex == 0
                              ? AppColors.colorBlackOpacity04
                              : AppColors.colorWhite,
                          BlendMode.srcIn, // Режим смешивания
                        ),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
