import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/widgets/app_button.dart';
import 'package:ara_smart_app/widgets/app_text.dart';
import 'package:ara_smart_app/widgets/background_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_with_data_entry.dart';

class LoginScreen3 extends StatelessWidget {
  const LoginScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.primaryColor,
      child: SafeArea(
        child: Scaffold(
          body: BackgroundScreen(
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
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
                    height: 10,
                  ),
                  Row(
                    children: const [
                      AppText(
                        text: ":Do you want to login with",
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(LoginWithData());
                    },
                    child: CustomButton(
                      text: "Data Entry",
                      num: "1",
                      height: 70,
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      width: MediaQuery.of(context).size.width * 0.6,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: CustomButton(
                      text: "Fingerprint",
                      num: "2",
                      height: 70,
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      width: MediaQuery.of(context).size.width * 0.6,
                    ),
                  ),
                  const SizedBox(
                    height: 10,),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: const [
                      AppText(
                        text: ":Do you want to",
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,),
                const  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: CustomButton(
                          text: "Back",
                          num: "3",
                          height: 50,
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          width: MediaQuery.of(context).size.width * 0.3,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {},
                        child: CustomButton(
                          text: "Exit",
                          num: "4",
                          height: 50,
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          width: MediaQuery.of(context).size.width * 0.3,
                        ),
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
