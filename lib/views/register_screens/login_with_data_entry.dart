import 'package:ara_smart_app/database/user_data.dart';
import 'package:ara_smart_app/models/user_model.dart';
import 'package:ara_smart_app/services/register_user_service.dart';
import 'package:ara_smart_app/views/register_screens/if_exit.dart';
import 'package:ara_smart_app/widgets/app_button.dart';
import 'package:ara_smart_app/widgets/background_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../../constants/app_colors.dart';
import '../../controllers/login_controller.dart';
import '../../widgets/app_text.dart';

class LoginWithData extends StatelessWidget {
  final controller = Get.put(LoginController());
  LoginWithData({Key? key}) : super(key: key);
  UserData userData = UserData();
  UserModel userModel = UserModel();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                height: 15,
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
                controller: controller.userId,
              ),
              const SizedBox(
                height: 10,
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
              CustomButton(
                onTap: () {
                  controller.isValidUser();
                },
                text: "Log in",
                num: "1",
                height: 40,
                fontSize: 18,
                color: Colors.white,
                width: MediaQuery.of(context).size.width * 0.35,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    onTap: () {
                      Get.back();
                    },
                    text: "Back",
                    num: "2",
                    height: 40,
                    fontSize: 18,
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width * 0.30,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => ExitScreen());
                    },
                    child: CustomButton(
                      text: "Exit",
                      num: "3",
                      height: 40,
                      fontSize: 18,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width * 0.30,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
