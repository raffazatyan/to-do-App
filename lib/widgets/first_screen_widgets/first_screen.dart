import 'package:application/widgets/first_screen_widgets/first_screen_widgets/add_task_widgets/add_task_button.dart';
import 'package:application/widgets/first_screen_widgets/first_screen_widgets/complate_indicator_widgets/complate_indicator.dart';
import 'package:application/widgets/first_screen_widgets/first_screen_widgets/listview_widgets/list_task_widget.dart';
import 'package:application/widgets/first_screen_widgets/first_screen_widgets/buttons_and_text_widgets/image_widget.dart';
import 'package:application/widgets/first_screen_widgets/first_screen_widgets/buttons_and_text_widgets/row_with_buttons.dart';
import 'package:application/widgets/first_screen_widgets/first_screen_widgets/buttons_and_text_widgets/task_buttons.dart';
import 'package:application/widgets/app_styles/app_styles.dart';
import 'package:application/widgets/first_screen_widgets/first_screen_widgets/buttons_and_text_widgets/under_full_indicator_text.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const MainAndImageWidget(),
          SizedBox(
            height: rh(context) * 20,
          ),
          const RowWithButtonsWidget(),
          SizedBox(
            height: rh(context) * 16,
          ),
          const ComplateIndicator(),
          SizedBox(
            height: rh(context) * 20,
          ),
          const UnderFullindicatorText(),
          SizedBox(
            height: rh(context) * 8,
          ),
          const TaskButtons(),
          SizedBox(
            height: rh(context) * 8,
          ),
          const ListTaskWidget(),
          SizedBox(
            height: rh(context) * 16,
          ),
          const AddTaskButton(),
        ],
      ),
    );
  }
}
