import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/app_button.dart';
import '../../widgets/app_text.dart';
import '../../widgets/background_screen.dart';

class KnowingBalance extends StatelessWidget {
  KnowingBalance({Key? key}) : super(key: key);

  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();
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
                        text: "Knowing the bank balance",
                        fontSize: 20,
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
                        text: "Your balance in account:",
                        fontSize: 16,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      AppText(
                        text: "Name of the person:",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(controller: userName),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      AppText(
                        text: "Bank account number:",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: password,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      AppText(
                        text: "Available balance:",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  TextField(),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: CustomButton(
                            text: "Back",
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
