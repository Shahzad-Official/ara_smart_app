import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/views/register_screens/register_username.dart';
import 'package:ara_smart_app/widgets/app_text.dart';
import 'package:ara_smart_app/widgets/background_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../../widgets/app_button.dart';

class RegistrationOtp extends StatelessWidget {
  const RegistrationOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.primaryColor,
      child: SafeArea(
          child: Scaffold(
        body: BackgroundScreen(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 130,
                  child: Image.asset("assets/otpIcon.png"),
                ),
                const SizedBox(
                  height: 25,
                ),
                const AppText(
                  text:
                      "Enter the password sent to a phone number for one time",
                  textAlign: TextAlign.center,
                  fontSize: 16,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Pinput(),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(RegisterUsername());
                      },
                      child: CustomButton(
                          text: "Continue",
                          num: "1",
                          height: 40,
                          color: Colors.white,
                          fontSize: 15,
                          width: MediaQuery.of(context).size.width * 0.35),
                    ),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: CustomButton(
                          text: "Cancel",
                          num: "2",
                          height: 40,
                          color: Colors.white,
                          fontSize: 15,
                          width: MediaQuery.of(context).size.width * 0.35),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
