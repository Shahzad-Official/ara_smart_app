import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/views/register_screens/successfully_register.dart';
import 'package:ara_smart_app/widgets/background_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/app_button.dart';
import '../../widgets/app_text.dart';

class AddFingerPrint extends StatelessWidget {
  const AddFingerPrint({Key? key}) : super(key: key);

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
                  const AppText(
                    text:
                        "Please place one of your fingers on the phone's fingerprint:",
                    fontSize: 18,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
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
                  InkWell(
                    onTap: () {
                      Get.to(SuccessfullyRegister());
                    },
                    child: CustomButton(
                        text: "Continue",
                        num: "1",
                        height: 45,
                        fontSize: 20,
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width * 0.40),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: CustomButton(
                            text: "Back",
                            num: "2",
                            height: 40,
                            fontSize: 20,
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width * 0.30),
                      ),
                      InkWell(
                        onTap: () {},
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
        ),
      ),
    );
  }
}
