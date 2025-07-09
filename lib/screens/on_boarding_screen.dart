import 'package:flutter/material.dart';
import 'package:islami_app/cache/cacheHelper.dart';
import 'package:islami_app/screens/home_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami_app/constants/app_theme.dart';

class OnBoardingScreen extends StatelessWidget {
  static const String routeName = "onBoarding";

  Widget _buildImage(String image, [double width = 350]) {
    return Image(image: AssetImage("assets/images/$image.png"), width: width);
  }

  final PageDecoration pageDecoration = const PageDecoration(
    imageFlex: 3,
    titleTextStyle: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: AppTheme.primary,
      fontFamily: 'JannaLT',
    ),
    bodyTextStyle: TextStyle(
      color: AppTheme.primary,
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.black,
      body: IntroductionScreen(
        animationDuration: 1000,

        globalBackgroundColor: AppTheme.black,
        allowImplicitScrolling: true,
        backStyle: const ButtonStyle(
          overlayColor: WidgetStateColor.transparent,
        ),
        nextStyle: const ButtonStyle(
          overlayColor: WidgetStateColor.transparent,
        ),
        doneStyle: const ButtonStyle(
          overlayColor: WidgetStateColor.transparent,
        ),
        globalHeader: const Align(
          alignment: Alignment.topCenter,

          child: Image(
            image: AssetImage("assets/images/header.png"),
            width: 300,
          ),
        ),
        pages: [
          PageViewModel(
            title: "Welcome To Islami App",
            body: "",
            image: _buildImage('welcome'),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Welcome To Islami",
            body: "We Are Very Excited To Have You In Our Community",
            image: _buildImage('kabba'),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Reading the Quran",
            body: "Read, and your Lord is the Most Generous",
            image: _buildImage('reading', 300),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Bearish",
            body: "Praise the name of your Lord, the Most High",
            image: _buildImage('bearish', 300),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Holy Quran Radio",
            body:
                "You can listen to the Holy Quran Radio through the application for free and easily",
            image: _buildImage('radio', 200),
            decoration: pageDecoration,
          ),
        ],
        dotsDecorator: const DotsDecorator(
          activeColor: AppTheme.primary,
          color: Color(0xff707070),
          activeSize: Size(25, 10),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(50),
              right: Radius.circular(50),
            ),
          ),
        ),
        skipOrBackFlex: 0,
        nextFlex: 0,
        showBackButton: true,
        back: const Text(
          'Back',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: AppTheme.primary,
          ),
        ),
        skip: const Text(
          'Skip',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: AppTheme.primary,
          ),
        ),
        next: const Icon(Icons.arrow_forward, color: AppTheme.primary),
        done: const Text(
          'Finish',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: AppTheme.primary,
          ),
        ),
        onDone: () {
          CacheHelper.setEligibility();
          Navigator.pushReplacementNamed(context, HomeScreen.routeName);
        },
        curve: Curves.fastLinearToSlowEaseIn,
        controlsMargin: const EdgeInsets.all(16),
      ),
    );
  }
}
