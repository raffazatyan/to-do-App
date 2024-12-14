import 'package:application/provider_models/list_model.dart';
import 'package:application/widgets/first_screen_widgets/first_screen_widgets/models/custom_button_model.dart';
import 'package:application/widgets/app_styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RowWithButtonsWidget extends StatefulWidget {
  const RowWithButtonsWidget({super.key});

  @override
  State<RowWithButtonsWidget> createState() => _RowWithButtonsWidgetState();
}

class _RowWithButtonsWidgetState extends State<RowWithButtonsWidget> {
  @override
  Widget build(BuildContext context) {
    final buttonsProvider = Provider.of<ListModel>(context);

    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: [
          CustomButton(
            height: 30,
            width: 64,
            text: buttonsProvider.buttonTextList[0],
            onTap: () => buttonsProvider.onButton(1),
            isSelected: buttonsProvider.button == 1,
          ),
          SizedBox(
            width: rw(context) * 8,
          ),
          CustomButton(
            height: 30,
            width: 96,
            text: buttonsProvider.buttonTextList[1],
            onTap: () => buttonsProvider.onButton(2),
            isSelected: buttonsProvider.button == 2,
          ),
          SizedBox(
            width: rw(context) * 8,
          ),
          CustomButton(
            height: 30,
            width: 64,
            text: buttonsProvider.buttonTextList[2],
            onTap: () => buttonsProvider.onButton(3),
            isSelected: buttonsProvider.button == 3,
          )
        ],
      ),
    );
  }
}
