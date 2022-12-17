import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/controllers/sign_up_controller.dart';
import 'package:ara_smart_app/views/register_screens/if_exit.dart';
import 'package:ara_smart_app/views/register_screens/registration_otp.dart';
import 'package:ara_smart_app/views/welcome_home/first_welcome.dart';
import 'package:ara_smart_app/widgets/app_button.dart';
import 'package:ara_smart_app/widgets/app_text.dart';
import 'package:ara_smart_app/widgets/background_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewUserRegistration extends StatelessWidget {
  NewUserRegistration({Key? key}) : super(key: key);
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
                        text: "What is your mobile number?",
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
                        "(Please enter numbers from left to right, no more than 8 numbers*)",
                    fontSize: 8,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: controller.mobile,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      AppText(
                        text: "What is your Debit Card number?",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  const AppText(
                    text:
                        "(Please enter numbers from left to right, no more than 8 numbers*)",
                    fontSize: 8,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: controller.cardNo,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      AppText(
                        text: "What is your Debit/ATM Card pin?",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  TextFormField(
                    controller: controller.balance,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(RegistrationOtp());
                    },
                    child: CustomButton(
                        text: "Continue",
                        num: "1",
                        height: 40,
                        color: Colors.white,
                        fontSize: 16,
                        width: MediaQuery.of(context).size.width * 0.35),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.off(() => FirstWelcome());
                        },
                        child: CustomButton(
                            text: "Back",
                            num: "2",
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
                            num: "3",
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
