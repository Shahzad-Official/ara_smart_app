import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/views/register_screens/if_exit.dart';
import 'package:ara_smart_app/views/register_screens/successfully_register.dart';
import 'package:ara_smart_app/widgets/background_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/app_button.dart';
import '../../widgets/app_text.dart';
import 'fingerprint_if_yes.dart';

class ActiveFingerprint extends StatelessWidget {
  const ActiveFingerprint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.primaryColor,
      child: SafeArea(
        child: Scaffold(
          body: BackgroundScreen(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AppText(
                    text: "Do you want to activate the fingerprint?",
                    textAlign: TextAlign.center,
                    fontSize: 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(AddFingerPrint());
                    },
                    child: CustomButton(
                      text: "Yes",
                      num: "1",
                      height: 50,
                      fontSize: 25,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width * 0.35,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => SuccessfullyRegister());
                    },
                    child: CustomButton(
                      text: "No",
                      num: "2",
                      height: 50,
                      fontSize: 25,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width * 0.35,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
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
                            num: "3",
                            height: 40,
                            color: Colors.white,
                            fontSize: 15,
                            width: MediaQuery.of(context).size.width * 0.30),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => ExitScreen());
                        },
                        child: CustomButton(
                            text: "Exit",
                            num: "4",
                            height: 40,
                            color: Colors.white,
                            fontSize: 15,
                            width: MediaQuery.of(context).size.width * 0.30),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
