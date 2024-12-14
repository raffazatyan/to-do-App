import 'package:application/widgets/app_styles/app_styles.dart';
import 'package:application/widgets/app_styles/colors.dart';
import 'package:application/widgets/first_screen_widgets/first_screen_widgets/add_task_widgets/add_task_window.dart';
import 'package:flutter/material.dart';

class AddTaskButton extends StatelessWidget {
  const AddTaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    //blue button under ListView
    return GestureDetector(
      onTap: () {
        const AddTaskWindow().showTaskDialog(context);
      },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Icon(
              color: AppColors.colorBlue,
              Icons.add,
              size: rh(context) * 24,
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child: Text(
              "Add Task", //blue button under ListView
              style: getStyle(
                context: context,
                fontSize: 16,
                color: AppColors.colorBlue,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
