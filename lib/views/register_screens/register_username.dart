import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/controllers/sign_up_controller.dart';
import 'package:ara_smart_app/widgets/background_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/app_button.dart';
import '../../widgets/app_text.dart';
import 'active_fingerprint.dart';

class RegisterUsername extends StatelessWidget {
  RegisterUsername({Key? key}) : super(key: key);

  SignUpController controller = Get.put(SignUpController());
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
                        text: "Register New User",
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      AppText(
                        text: "Create a username to log in to the\naccount:",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const AppText(
                    text:
                        "(Please enter characters from left to right, no more than 30 letters*)",
                    fontSize: 8,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: controller.userName,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      AppText(
                        text: "Create a new password",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  const AppText(
                    text:
                        "(Please enter numbers from left to right, no more than 20 numbers*)",
                    fontSize: 8,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: controller.password,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      AppText(
                        text: "Confirm new password",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  TextFormField(),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          controller.createNewUser();
                          Get.to(
                            ActiveFingerprint(),
                          );
                        },
                        child: CustomButton(
                            text: "Send",
                            num: "1",
                            height: 40,
                            color: Colors.white,
                            fontSize: 15,
                            width: MediaQuery.of(context).size.width * 0.30),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CustomButton(
                            text: "Exit",
                            num: "2",
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
