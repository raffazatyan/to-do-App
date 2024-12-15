import 'package:application/widgets/app_styles/app_styles.dart';
import 'package:application/widgets/app_styles/colors.dart';
import 'package:application/widgets/first_screen_widgets/first_screen_widgets/add_task_widgets/date_widgets.dart';
import 'package:application/widgets/first_screen_widgets/first_screen_widgets/add_task_widgets/segmented_tab.dart';
import 'package:application/widgets/first_screen_widgets/first_screen_widgets/add_task_widgets/text_and_close%20_widgets.dart';
import 'package:application/widgets/first_screen_widgets/first_screen_widgets/add_task_widgets/input_widget.dart';
import 'package:application/widgets/first_screen_widgets/first_screen_widgets/add_task_widgets/save_button.dart';
import 'package:flutter/material.dart';

class AddTaskControl extends StatelessWidget {
  const AddTaskControl({super.key});

  void showTaskDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Dialog(
            backgroundColor: AppColors.colorAddTaskWindowBackground,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            insetPadding: EdgeInsets.zero,
            child: SizedBox(
              height: rh(context) * 350,
              width: rw(context) * 358,
              child: Padding(
                padding: const EdgeInsets.only(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: rh(context) * 16,
                    ),
                    const TextAndCloseWidgets(),
                    SizedBox(
                      height: rh(context) * 20,
                    ),
                    const SegmentedTabWidgets(),
                    SizedBox(
                      height: rh(context) * 16,
                    ),
                    const InputWidget(),
                    const DateWidgets(),
                    SizedBox(
                      height: rh(context) * 24,
                    ),
                    const SaveButton(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}
