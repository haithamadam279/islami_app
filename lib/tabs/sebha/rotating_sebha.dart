import 'package:flutter/material.dart';
import '../../constants/app_theme.dart';

class RotatingSebha extends StatefulWidget {
  const RotatingSebha({super.key});

  @override
  RotatingSebhaState createState() => RotatingSebhaState();
}

class RotatingSebhaState extends State<RotatingSebha> {
  final List<String> _sebhaText = [
    'سبحان الله',
    'الحمد لله',
    'الله اكبر',
    'لا اله الا الله',
    'استغفر الله',
  ];
  int _sebhaIndex = 0;
  double _turns = 0.0;
  int _number = 0;

  void _rotate() {
    setState(() {
      //(1/31 of a full turn)
      _turns += 1 / 33;
      if (_turns >= 1) {
        _turns = 0;
        _number = 0;
        if (_sebhaIndex < _sebhaText.length - 1) {
          _sebhaIndex++;
        } else {
          _sebhaIndex = 0;
        }
      } else {
        _number++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _rotate,
      child: Stack(
        children: [
          AnimatedRotation(
            turns: _turns,
            duration: Duration(milliseconds: 600),
            curve: Curves.easeInOut,
            child: Image.asset(
              'assets/images/sebhabody.png',
              width: MediaQuery.of(context).size.width * 0.9,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  _sebhaText[_sebhaIndex],
                  style: TextStyle(
                    fontFamily: 'JannaLT',
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    color: AppTheme.white,
                  ),
                ),
                Text(
                  "$_number",
                  style: TextStyle(
                    fontFamily: 'JannaLT',
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    color: AppTheme.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
