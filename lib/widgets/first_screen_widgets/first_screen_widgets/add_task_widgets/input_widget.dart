import 'package:application/provider_models/list_model.dart';
import 'package:application/widgets/app_styles/app_styles.dart';
import 'package:application/widgets/app_styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final inputProvider = Provider.of<ListModel>(context, listen: true);
    return GestureDetector(
      child: Column(
        children: [
          SizedBox(
            height: rh(context) * 46,
            width: rw(context) * 326,
            child: TextField(
              cursorColor: AppColors.colorBlack,
              onChanged: (value) => inputProvider.errorTextClean(),
              controller: inputProvider.textCtrl,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.colorBackgroundCloseButton008,
                contentPadding: EdgeInsets.zero,
                hintText: "Task Name",
                hintStyle: getStyle(
                    context: context,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.colorBlackOpacity04),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none),
              ),
            ),
          ),
          inputProvider.redMessageError
              ? SizedBox(
                  height: rh(context) * 16,
                  child: Text(
                    "incorrect Task Name",
                    style: getStyle(
                        context: context,
                        fontSize: 12,
                        color: Colors.red,
                        fontWeight: FontWeight.w500),
                  ),
                )
              : SizedBox(
                  height: rh(context) * 16,
                ),
        ],
      ),
    );
  }
}
