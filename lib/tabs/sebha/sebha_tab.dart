import 'package:flutter/material.dart';
import 'package:islami_app/constants/app_theme.dart';
import 'package:islami_app/tabs/sebha/rotating_sebha.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
                    style: TextStyle(
                      fontFamily: 'JannaLT',
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                      color: AppTheme.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Image.asset('assets/images/sebhatail.png'),
                  const RotatingSebha(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
