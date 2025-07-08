import 'package:flutter/material.dart';
import 'package:islami_app/constants/app_theme.dart';
import 'package:islami_app/tabs/radio/widgets/play_button.dart';
import 'package:islami_app/tabs/radio/widgets/sound_button.dart';

class AudioCard extends StatelessWidget {
  const AudioCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Mosque-02.png'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
        color: AppTheme.primary,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Radio Ibrahim Al-Akdar',
            style: Theme.of(
              context,
            ).textTheme.titleMedium!.copyWith(color: AppTheme.black),
          ),
          Row(
            children: [
              Spacer(),
              PlayButton(),
              Flexible(child: Row(children: [SoundButton()])),
            ],
          ),
        ],
      ),
    );
  }
}
