import 'package:application/widgets/app_styles/app_styles.dart';
import 'package:application/widgets/settings_page_widgets/settings_feedback_button.dart';
import 'package:application/widgets/settings_page_widgets/settings_image.dart';
import 'package:application/widgets/settings_page_widgets/settings_text_widget.dart';
import 'package:application/widgets/settings_page_widgets/settings_two_buttons_under_feedback.dart';
import 'package:application/widgets/settings_page_widgets/settings_under_image_text.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: rh(context) * 55,
          ),
          const SettingsText(),
          SizedBox(
            height: rh(context) * 15,
          ),
          const SettingsImage(),
          SizedBox(height: rh(context) * 16),
          const UnderImageText(),
          SizedBox(
            height: rh(context) * 8,
          ),
          const FeedBackButton(),
          SizedBox(
            height: rh(context) * 8,
          ),
          const RowThowButtonsUnderFeedBack(),
        ],
      ),
    );
  }
}
