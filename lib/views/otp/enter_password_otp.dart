import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/views/otp/transfers.dart';
import 'package:ara_smart_app/widgets/app_button.dart';
import 'package:ara_smart_app/widgets/app_text.dart';
import 'package:ara_smart_app/widgets/background_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class Enter_password_otp extends StatelessWidget {
  const Enter_password_otp({Key? key}) : super(key: key);

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(
                        width: 18,
                      ),
                      Image(
                        image: AssetImage("assets/otpIcon.png"),
                        height: 115,
                        width: 115,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const AppText(
                    text:
                        "Enter the password sent to a phone \nnumber for one time ",
                    textAlign: TextAlign.center,
                    fontSize: 18,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Pinput(),
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(const Transfer_to_Account());
                        },
                        child: CustomButton(
                            text: "Continue",
                            num: "1",
                            height: 40,
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width * 0.32),
                      ),
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: CustomButton(
                            text: "Cancel",
                            num: "2",
                            color: Colors.white,
                            height: 40,
                            width: MediaQuery.of(context).size.width * 0.32),
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
