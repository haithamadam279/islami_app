import 'package:flutter/material.dart';
import 'package:islami_app/constants/app_theme.dart';

class SuraItem extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Row(
      children: [
        Container(
          height: 52,
          width: 52,
          margin: EdgeInsets.only(right: 24),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/sura_number_frame.png'),
            ),
          ),
          child: Text('1', style: Theme.of(context).textTheme.titleLarge),
        ),
        Column(
          children: [
            Text('$', style: textTheme.titleLarge),
            Text('7 Verses', style: textTheme.titleSmall),
          ],
        ),
        Spacer(),
        Text('الفاتحه', style: textTheme.titleLarge),
      ],
    );
  }
}
