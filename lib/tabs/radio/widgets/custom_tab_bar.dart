import 'package:flutter/material.dart';
import 'package:islami_app/constants/app_theme.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppTheme.black.withValues(alpha: 0.3),
      ),
      child: TabBar(
        labelColor: AppTheme.black,
        unselectedLabelColor: AppTheme.white,
        dividerHeight: 0.0,
        labelStyle: TextStyle(fontFamily: 'JannaLT', fontSize: 16),
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppTheme.primary,
        ),
        tabs: const [
          Tab(text: 'Radio'),
          Tab(text: 'Reciters'),
        ],
      ),
    );
  }
}
