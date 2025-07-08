import 'package:flutter/material.dart';
import 'package:islami_app/constants/app_theme.dart';
import 'package:islami_app/tabs/sebha/rotating_sebha.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/sebhabg.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),

        // 🔹 Linear Gradient
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AppTheme.black.withValues(alpha: 0.7), Colors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/Mosque-03.png',
                    width: MediaQuery.of(context).size.width * 0.6,
                  ),
                  const SizedBox(height: 16),
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
