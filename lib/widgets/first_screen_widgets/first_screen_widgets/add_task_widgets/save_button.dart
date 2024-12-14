import 'package:application/provider_models/list_model.dart';
import 'package:application/widgets/app_styles/app_styles.dart';
import 'package:application/widgets/first_screen_widgets/first_screen_widgets/models/task_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SaveButton extends StatefulWidget {
  const SaveButton({super.key});

  @override
  State<SaveButton> createState() => _SaveButtonState();
}

class _SaveButtonState extends State<SaveButton> {
  // TextEditingController textCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final redButton = Provider.of<ListModel>(context);
    return Padding(
      padding: const EdgeInsets.only(
          // top: 24,
          // left: 16,
          ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        height: rh(context) * 46,
        width: rw(context) * 326,
        child: ElevatedButton(
          onPressed: () {
            final saveButtonProvider =
                Provider.of<ListModel>(context, listen: false);
            if (saveButtonProvider.textCtrl.text.isEmpty) {
              redButton.redFun();
            }
            if (saveButtonProvider.textCtrl.text.isNotEmpty) {
              if (saveButtonProvider.segmentedTabCurrentIndex == 0) {}
              final newTask = TaskModel(
                tittle: saveButtonProvider.textCtrl.text,
                date: saveButtonProvider.initial,
                categoryWork: saveButtonProvider.segmentedTabCurrentIndex == 0
                    ? true
                    : false,
                categoryMeetings:
                    saveButtonProvider.segmentedTabCurrentIndex == 1
                        ? true
                        : false,
                categoryHome: saveButtonProvider.segmentedTabCurrentIndex == 2
                    ? true
                    : false,
              );
              Provider.of<ListModel>(context, listen: false).addTask(newTask);
              Navigator.of(context).pop();

              saveButtonProvider.popOnCurentButton();
              saveButtonProvider.clearTextAfterDelay();
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(242, 170, 145, 1),
          ).copyWith(
            overlayColor: WidgetStateProperty.all(
              const Color.fromRGBO(231, 126, 35, 1),
            ),
          ),
          child: Text(
            "Save",
            style: getStyle(
                context: context,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
