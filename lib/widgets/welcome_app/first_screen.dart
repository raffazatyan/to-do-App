import 'package:application/bottom_navigation_bar.dart';
import 'package:application/provider_models/list_model.dart';
import 'package:application/widgets/welcome_app/welcome_model.dart';
import 'package:flutter/material.dart';
// import 'package:lastproject/widgets/welcome_app/welcome_model.dart';
import 'package:provider/provider.dart';

class WelcomeFirstScreen extends StatelessWidget {
  const WelcomeFirstScreen({super.key});
  // Функция для предварительной загрузки изображений

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: Provider.of<ListModel>(context).isFirstRun(),
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data == true) {
          return const Scaffold(
            body: WelcomeModel(
              dir: MainAxisAlignment.spaceAround,
              buttonIconName: "Next",
              routName: '/sec',
              imageName: "assets/welcome_images/smile.png",
              textUnderImage: "Welcome to\n BalanceHer!",
              textSmall:
                  "Your assistant in creating\n harmony and development!",
            ),
          );
        } else {
          return const BottomBar();
        }
      },
    );
  }
}
