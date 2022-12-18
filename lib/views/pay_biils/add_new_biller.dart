import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/views/pay_biils/payer_summary.dart';
import 'package:ara_smart_app/widgets/app_button.dart';
import 'package:ara_smart_app/widgets/app_text.dart';
import 'package:ara_smart_app/widgets/background_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Add_new_biller extends StatelessWidget {
  const Add_new_biller({Key? key}) : super(key: key);

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
                    text: "Pay Bills",
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                  ),
                  const AppText(
                    text: "Add a new biller",
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryColor,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const AppText(
                    text: "What is the name of your biller?",
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  const AppText(
                    text:
                        "(*Please enter characters from left to right no more than 30\n letters)",
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const AppText(
                    text:
                        "M  E  D  C  P   o  s t  p  a  l  i  d  e  l  e  c  t  r  i c  i  t  y",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  const AppText(
                    text: "What Nickname would you like to use?",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  const AppText(
                    text:
                        "(*Please enter characters from left to right no more than 30\n letters)",
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                  ),
                  const AppText(
                    text: "M  E  D  C",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  const AppText(
                    text: "What is the account number?",
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  const AppText(
                    text: "8  0  6   5  3   6   3   7    6   9   5    4",
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(const Payer_summary());
                        },
                        child: CustomButton(
                          text: "Continue",
                          num: "1",
                          height: 45,
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          width: MediaQuery.of(context).size.width * 0.35,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      InkWell(
                        onTap: () {},
                        child: CustomButton(
                          text: "Cancel",
                          num: "2",
                          height: 45,
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          width: MediaQuery.of(context).size.width * 0.35,
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
