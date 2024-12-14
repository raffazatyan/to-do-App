import 'package:application/provider_models/list_model.dart';
import 'package:application/widgets/app_styles/app_styles.dart';
import 'package:application/widgets/app_styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UnderIndicatorTextWidget extends StatelessWidget {
  const UnderIndicatorTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final digitProcent = Provider.of<ListModel>(context);
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "Complete daily tasks",
              style: getStyle(
                context: context,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.colorBlackOpacity04,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text(
              "${(digitProcent.completionPercentage * 100 / 100).toInt()}%",
              style: getStyle(
                context: context,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.colorBlackOpacity04,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
