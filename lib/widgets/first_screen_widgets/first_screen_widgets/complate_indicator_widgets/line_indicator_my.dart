import 'package:application/provider_models/list_model.dart';
import 'package:application/widgets/app_styles/app_styles.dart';
import 'package:application/widgets/app_styles/colors.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LineIndicatorMy extends StatefulWidget {
  const LineIndicatorMy({super.key});

  @override
  State<LineIndicatorMy> createState() => _LineIndicatorMyState();
}

class _LineIndicatorMyState extends State<LineIndicatorMy> {
  @override
  Widget build(BuildContext context) {
    final procent = Provider.of<ListModel>(context);
    return SizedBox(
      width: rw(context) * 326,
      height: rh(context) * 8,
      child: LinearProgressIndicator(
        borderRadius: BorderRadius.circular(16),
        value: procent.completionPercentage / 100,
        color: AppColors.colorBlue,
        backgroundColor: AppColors.colorGreyForIndicator,
      ),
    );
  }
}
