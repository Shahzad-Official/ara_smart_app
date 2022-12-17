import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/widgets/app_button.dart';
import 'package:ara_smart_app/widgets/app_text.dart';
import 'package:ara_smart_app/widgets/background_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../welcome_home/welcome_screen.dart';

class SuccessfullyRegister extends StatelessWidget {
  const SuccessfullyRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.primaryColor,
      child: SafeArea(
        child: Scaffold(
          body: BackgroundScreen(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const AppText(
                  text: "You have been registered successfully",
                  textAlign: TextAlign.center,
                  fontSize: 20,
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset("assets/greenTick.png"),
                ),
                const SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () {
                    Get.to(
                      WelcomeScreen(),
                    );
                  },
                  child: CustomButton(
                    text: "Ok",
                    num: "1",
                    color: Colors.white,
                    fontSize: 18,
                    height: 40,
                    width: 100,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
