import 'package:flutter/material.dart';
import 'package:islami_app/constants/app_theme.dart';
import 'package:islami_app/screens/home_screen.dart';
import 'package:islami_app/screens/on_boarding_screen.dart';
import 'package:islami_app/cache/cacheHelper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();

  bool onboardingSeen = false;
  // CacheHelper.getEligibility();

  runApp(IslamiApp(onboardingSeen: onboardingSeen));
}

class IslamiApp extends StatelessWidget {
  final bool onboardingSeen;

  const IslamiApp({super.key, required this.onboardingSeen});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        OnBoardingScreen.routeName: (_) => OnBoardingScreen(),
      },
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      initialRoute: onboardingSeen
          ? HomeScreen.routeName
          : OnBoardingScreen.routeName,
    );
  }
}
