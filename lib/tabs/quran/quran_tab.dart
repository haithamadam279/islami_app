import 'package:flutter/material.dart';
import 'package:islami_app/constants/app_theme.dart';
import 'package:islami_app/tabs/quran/widgets/quran_service.dart';
import 'package:islami_app/tabs/quran/widgets/sura_item.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
            'Suras List',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView.separated(
              itemBuilder: (_, index) => SuraItem(),
              itemCount: QuranService.englishSuraNames.length,
              separatorBuilder: (_, index) => Divider(
                thickness: 1,
                color: AppTheme.white,
                indent: screenWidth * 0.1,
                endIndent: screenWidth * 0.1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
