import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_colors.dart';
import '../../widgets/app_text.dart';

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
              BackgroundScreen(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: AppColors.primaryColor,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10),
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
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10),
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
                              InkWell(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        AppText(
                                          text: "Log in",
                                          color: Colors.white,
                                          fontSize: 25,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        AppText(
                                          text: "New User",
                                          color: Colors.white,
                                          fontSize: 25,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 30,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      AppText(
                                        text: "Exit",
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BackgroundScreen extends StatelessWidget {
  const BackgroundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
                color: AppColors.primaryColor,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0, top: 10),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                        child: Image.asset("assets/dots.png"),
                      ),
                      Text(
                        "SMART MOBILE\nAPPLICATION",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.notoSerif(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
