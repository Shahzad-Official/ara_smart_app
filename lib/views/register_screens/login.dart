import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_text.dart';
import '../../widgets/background_screen.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.primaryColor,
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              BackgroundScreen(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 10),
                          child: AppText(
                            text: "Welcome",
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 10),
                          child: AppText(
                            text: ":Do you want",
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 25.0, right: 25),
                            child: CustomButton(
                              text: "Log in",
                              num: "1",
                              height: 70,
                              fontSize: 25,
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 25.0, right: 25),
                            child: CustomButton(
                              text: "New User",
                              num: "2",
                              height: 70,
                              fontSize: 25,
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {},
                          child: CustomButton(
                            text: "Exit",
                            num: "3",
                            height: 40,
                            width: 120,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget NumberContainer(String num) {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: AppText(
          text: num,
          color: AppColors.primaryColor,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
