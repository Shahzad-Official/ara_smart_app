import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/views/otp/enter_password_otp.dart';
import 'package:ara_smart_app/widgets/app_text.dart';
import 'package:ara_smart_app/widgets/background_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/app_button.dart';

class BetweenOwnAccountSecond extends StatelessWidget {
  const BetweenOwnAccountSecond({Key? key}) : super(key: key);

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
                AppText(
                  text: "Between own accounts",
                  fontSize: 18,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    AppText(
                      text: "What amount would you like to\ntransfer?",
                      fontSize: 16,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(
                      text: "OMR:",
                      color: Colors.red,
                    ),
                    const SizedBox(
                      width: 100.0,
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    AppText(
                      text: "Would you like to add any remarks?",
                      fontSize: 16,
                    ),
                  ],
                ),
                TextField(
                  style: TextStyle(color: Colors.black),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(Enter_password_otp());
                      },
                      child: CustomButton(
                        text: "Continue",
                        num: "1",
                        height: 45,
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        width: MediaQuery.of(context).size.width * 0.35,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: CustomButton(
                        text: "Cancel",
                        num: "2",
                        height: 45,
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        width: MediaQuery.of(context).size.width * 0.35,
                      ),
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
