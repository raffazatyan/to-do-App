import 'package:application/bottom_navigation_widgets/bottom_navigation_bar.dart';
import 'package:application/provider_models/list_model.dart';
import 'package:application/widgets/app_styles/colors.dart';
import 'package:application/widgets/first_screen_widgets/first_screen_control.dart';
import 'package:application/widgets/settings_page_widgets/settings_page_control.dart';
import 'package:application/widgets/welcome_app/second_screen.dart';
import 'package:application/widgets/welcome_app/first_screen.dart';
import 'package:application/widgets/welcome_app/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ListModel(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Provider.of<ListModel>(context, listen: false).loadTasks();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(390, 844),
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
          splashFactory: NoSplash.splashFactory,
          scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        routes: {
          '/firstScreen': (context) => const WelcomeFirstScreen(),
          '/sec': (context) => const WelcomeSecondScreen(),
          '/thrd': (context) => const ThirdScreen(),
          '/appFirstScreen': (context) => const FirstScreenControl(),
          '/settings': (context) => const SettingsPage(),
          '/bottomNavigationBar': (context) => const BottomBar(),
        },
        initialRoute: '/firstScreen',
      ),
    );
  }
}
