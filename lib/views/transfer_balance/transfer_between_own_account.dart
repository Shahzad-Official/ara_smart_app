import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/widgets/background_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/app_button.dart';
import '../../widgets/app_text.dart';
import '../otp/transfers_account.dart';
import 'between_own_account_2.dart';

class TransferBtweenOwnAccount extends StatefulWidget {
  const TransferBtweenOwnAccount({super.key});

  @override
  State<TransferBtweenOwnAccount> createState() =>
      _TransferBtweenOwnAccountState();
}

class _TransferBtweenOwnAccountState extends State<TransferBtweenOwnAccount> {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppText(
                    text: "Transfers",
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                  ),
                  const AppText(
                    text: "Between other accounts",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue,
                  ),
                  const AppText(
                    text: "Which account wold you like to send from?",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  const AppText(
                    text: "7 8 7 8 4 8 4 7  7 4 7 4 7 8",
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppText(
                        text: "Available Balance",
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      AppText(
                        text: "OMR 300.750",
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppText(
                        text: "To",
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      AppText(
                        text: "Wafa",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const AppText(
                    text: "This is:",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  const radio1(),
                  const AppText(
                    text: "What is the transaction date?",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  Row(
                    children: const [
                      AppText(
                        text: "Year:",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      AppText(
                        text: "2022",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      AppText(
                        text: "Month:",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      AppText(
                        text: "12",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      AppText(
                        text: "Day:",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      AppText(
                        text: "24",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(BetweenOwnAccountSecond());
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
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
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
