import 'package:application/provider_models/list_model.dart';
import 'package:application/widgets/first_screen_widgets/first_screen_widgets/models/custom_button_model.dart';
import 'package:application/widgets/app_styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskButtons extends StatefulWidget {
  const TaskButtons({super.key});

  @override
  State<TaskButtons> createState() => _TaskButtonsState();
}

class _TaskButtonsState extends State<TaskButtons> {
  @override
  Widget build(BuildContext context) {
    final twoButtonProvider = Provider.of<ListModel>(context);
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: [
          CustomButton(
              height: 30,
              width: 64,
              text: "Daily",
              onTap: () => twoButtonProvider.onButtonPressedGroup(1),
              isSelected: twoButtonProvider.selectedGroup == 1),
          SizedBox(
            width: rw(context) * 8,
          ),
          CustomButton(
              height: 30,
              width: 96,
              text: "Weekly",
              onTap: () => twoButtonProvider.onButtonPressedGroup(2),
              isSelected: twoButtonProvider.selectedGroup == 2),
        ],
      ),
    );
  }
}
