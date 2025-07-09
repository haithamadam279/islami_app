import 'package:flutter/material.dart';
import 'package:islami_app/constants/app_theme.dart';
import 'package:islami_app/tabs/radio/widgets/radio_tab_view.dart';
import 'package:islami_app/tabs/radio/widgets/reciters_tab_view.dart';
import 'package:islami_app/tabs/radio/widgets/custom_tab_bar.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: DefaultTabController(
          length: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CustomTabBar(),
              SizedBox(height: 10),
              const Expanded(
                child: TabBarView(
                  children: [RadioTabView(), RecitersTabView()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
