import 'package:application/widgets/app_styles/app_styles.dart';
import 'package:application/widgets/first_screen_widgets/first_screen_widgets/complate_indicator_widgets/line_indicator_my.dart';
import 'package:application/widgets/first_screen_widgets/first_screen_widgets/complate_indicator_widgets/under_indicator_widget.dart';
import 'package:application/widgets/first_screen_widgets/first_screen_widgets/complate_indicator_widgets/upper_indicator_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ComplateIndicator extends StatelessWidget {
  const ComplateIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: Colors.white,
      ),
      height: rh(context) * 94,
      width: rw(context) * 358,
      child: Column(
        children: [
          SizedBox(
            height: rh(context) * 16,
          ),
          const UpperIndicatorText(),
          SizedBox(
            height: rh(context) * 8,
          ),
          const LineIndicatorMy(),
          SizedBox(
            height: rh(context) * 4,
          ),

          const UnderIndicatorTextWidget(),
          // ProcentWidget(),

          //LineIndicator Widget.
        ],
      ),
    );
  }
}
