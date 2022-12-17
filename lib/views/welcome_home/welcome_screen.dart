import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/views/pay_biils/pay_bills.dart';
import 'package:ara_smart_app/views/register_screens/if_exit.dart';
import 'package:ara_smart_app/widgets/app_button.dart';
import 'package:ara_smart_app/widgets/app_text.dart';
import 'package:ara_smart_app/widgets/background_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

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
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      AppText(
                        text: "What kind of service do you want?",
                        fontSize: 16,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: CustomButton(
                        text: "Knowing the\nbank balance",
                        num: "1",
                        height: 70,
                        fontSize: 20,
                        color: Colors.white,
                        textAlign: TextAlign.center,
                        width: MediaQuery.of(context).size.width * 0.65),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: CustomButton(
                        text: "Transfer\nof funds",
                        num: "2",
                        height: 70,
                        fontSize: 20,
                        color: Colors.white,
                        textAlign: TextAlign.center,
                        width: MediaQuery.of(context).size.width * 0.65),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(const Pay_bills());
                    },
                    child: CustomButton(
                        text: "Pay bills",
                        num: "3",
                        height: 70,
                        fontSize: 20,
                        color: Colors.white,
                        textAlign: TextAlign.center,
                        width: MediaQuery.of(context).size.width * 0.65),
                  ),
                  const SizedBox(
                    height: 20,
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
                            num: "4",
                            height: 40,
                            fontSize: 18,
                            color: Colors.white,
                            textAlign: TextAlign.center,
                            width: MediaQuery.of(context).size.width * 0.30),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => ExitScreen());
                        },
                        child: CustomButton(
                            text: "Exit",
                            num: "5",
                            height: 40,
                            fontSize: 18,
                            color: Colors.white,
                            textAlign: TextAlign.center,
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
