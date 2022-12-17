import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/widgets/background_screen.dart';
import 'package:flutter/material.dart';

class BetweenOwnAccountSecond extends StatelessWidget {
  const BetweenOwnAccountSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.primaryColor,
      child: SafeArea(
          child: Scaffold(
        body: BackgroundScreen(
            child: Column(
          children: [],
        )),
      )),
    );
  }
}
