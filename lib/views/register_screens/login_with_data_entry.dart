import 'package:ara_smart_app/widgets/app_button.dart';
import 'package:ara_smart_app/widgets/background_screen.dart';
import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../widgets/app_text.dart';

class LoginWithData extends StatelessWidget {
  LoginWithData({Key? key}) : super(key: key);

  TextEditingController UserNameController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
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
                children: [
                  AppText(
                    text: "Welcome",
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryColor,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  AppText(
                    text: ":Log in",
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  AppText(
                    text: ":Do you want to login with",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              AppText(
                text:
                    "(Please enter characters from left to right, no more than 30 letters*)",
                fontSize: 8,
                color: Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: UserNameController,
              ),
              SizedBox(
                height: 10,
              ),
              AppText(
                text:
                    "(Please enter numbers from left to right, no more than 20 numbers*)",
                fontSize: 8,
                color: Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: PasswordController,
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: CustomButton(
                  text: "Log in",
                  num: "1",
                  height: 40,
                  fontSize: 18,
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width * 0.35,
                ),
              ),
              SizedBox(
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
                      fontSize: 18,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width * 0.30,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
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
