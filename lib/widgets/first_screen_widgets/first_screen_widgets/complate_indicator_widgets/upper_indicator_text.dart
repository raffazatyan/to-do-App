import 'package:application/provider_models/list_model.dart';
import 'package:application/widgets/app_styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UpperIndicatorText extends StatelessWidget {
  const UpperIndicatorText({super.key});

  @override
  Widget build(BuildContext context) {
    final indivatorTextProvider = Provider.of<ListModel>(context);

    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: SizedBox(
        width: rw(context) * 358,
        child: Text(
          indivatorTextProvider.buttonAndIndicatorText,
          style: getStyle(
            context: context,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
