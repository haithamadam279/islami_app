import 'package:flutter/material.dart';
import 'package:islami_app/constants/app_theme.dart';
import 'package:islami_app/tabs/radio/widgets/radio_tab_view.dart';
import 'package:islami_app/tabs/radio/widgets/reciters_tab_view.dart';
import 'package:islami_app/tabs/radio/widgets/custom_tab_bar.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/silhouette-woman-reading-quran.jpg',
              ),
              alignment: Alignment.center,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AppTheme.black.withValues(alpha: 0.7), AppTheme.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: DefaultTabController(
              length: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/Mosque-03.png',
                        fit: BoxFit.cover,
                      ),
                      // const SizedBox(height: 8),
                    ],
                  ),
                  const CustomTabBar(),
                  const SizedBox(height: 12),
                  const Expanded(
                    child: TabBarView(
                      children: [RadioTabView(), RecitersTabView()],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
