import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/widgets/app_button.dart';
import 'package:ara_smart_app/widgets/app_text.dart';
import 'package:ara_smart_app/widgets/background_screen.dart';
import 'package:flutter/material.dart';

class Add_Beneficiary extends StatelessWidget {
  const Add_Beneficiary({Key? key}) : super(key: key);

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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppText(
                    text: "Transfers",
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const AppText(
                    text: "Add Beneficiary",
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryColor,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const AppText(
                    text: "What Nickname would you like to use?",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  const AppText(
                    text:
                        "(Please enter characters from left to right no more than 30\n letters)",
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const AppText(
                    text: "W  a  f  a   A  l  i",
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  const AppText(
                    text: "What is the account number?",
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  const AppText(
                    text:
                        "8  4  4   3   4   3   4   4   4   3   1  9     1   0   7   6   7",
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  const AppText(
                    text:
                        "Do  you want to continue the|n process of adding the beneficiary?",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: CustomButton(
                              text: "Yes",
                              num: "1",
                              height: 50,
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              width: MediaQuery.of(context).size.width * 0.3,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          InkWell(
                            onTap: () {},
                            child: CustomButton(
                              text: "No",
                              num: "2",
                              height: 50,
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              width: MediaQuery.of(context).size.width * 0.3,
                            ),
                          ),
                        ],
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
