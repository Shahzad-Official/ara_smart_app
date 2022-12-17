import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/controllers/login_controller.dart';
import 'package:ara_smart_app/views/register_screens/if_exit.dart';
import 'package:ara_smart_app/widgets/app_button.dart';
import 'package:ara_smart_app/widgets/background_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/app_text.dart';

class LoginWithFingreprint extends StatelessWidget {
  const LoginWithFingreprint({Key? key}) : super(key: key);

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
                Row(
                  children: const [
                    AppText(
                      text: "Welcome",
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryColor,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    AppText(
                      text: ":Log in",
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.red,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset("assets/fingerprint.png"),
                ),
                const SizedBox(
                  height: 30,
                ),
                GetBuilder<LoginController>(
                  init: LoginController(),
                  builder: (_) {
                    return InkWell(
                      onTap: () async {
                        _.userId.text = "shahzad1234";
                        _.password.text = "shahzad12@";
                        await _.isValidUser();
                      },
                      child: CustomButton(
                          text: "Login",
                          num: "1",
                          height: 40,
                          fontSize: 20,
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width * 0.35),
                    );
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: CustomButton(
                          text: "Back",
                          num: "2",
                          height: 40,
                          fontSize: 20,
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width * 0.30),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => ExitScreen());
                      },
                      child: CustomButton(
                          text: "Exit",
                          num: "3",
                          height: 40,
                          fontSize: 20,
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width * 0.30),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
