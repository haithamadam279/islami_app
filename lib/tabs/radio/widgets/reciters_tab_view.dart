import 'package:flutter/material.dart';
import 'package:islami_app/tabs/radio/widgets/audio_card.dart';

class RecitersTabView extends StatelessWidget {
  const RecitersTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return AudioCard();
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: 16.0);
      },
    );
  }
}
