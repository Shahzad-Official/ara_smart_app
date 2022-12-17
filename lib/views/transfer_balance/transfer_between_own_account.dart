import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/widgets/background_screen.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_button.dart';
import '../../widgets/app_text.dart';

class TransferBtweenOwnAccount extends StatefulWidget {
  const TransferBtweenOwnAccount({super.key});

  @override
  State<TransferBtweenOwnAccount> createState() =>
      _TransferBtweenOwnAccountState();
}

String _value = "";

class _TransferBtweenOwnAccountState extends State<TransferBtweenOwnAccount> {
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
                children: [
                  Row(
                    children: [
                      const AppText(
                        text: "Transfers",
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  AppText(
                    text: "Between own accounts",
                    color: AppColors.primaryColor,
                    fontSize: 16,
                  ),
                  Row(
                    children: [
                      const AppText(
                        text: "Which account would you like to send from? ",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const AppText(
                        text: "2341236789043627 ",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppText(
                        text: "Available balance:",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      const AppText(
                        text: "OMR 400.000",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppText(
                        text: "To:",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      const AppText(
                        text: "Tahani",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppText(
                        text: "Account number:",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      const AppText(
                        text: "3040592378495048",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const AppText(
                        text: "This is:",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value.toString();
                          });
                        },
                      ),
                      Radio(
                        value: 1,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value.toString();
                          });
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: CustomButton(
                            text: "Continue",
                            num: "1",
                            height: 40,
                            fontSize: 18,
                            color: Colors.white,
                            textAlign: TextAlign.center,
                            width: MediaQuery.of(context).size.width * 0.40),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CustomButton(
                            text: "Cancel",
                            num: "2",
                            height: 40,
                            fontSize: 18,
                            color: Colors.white,
                            textAlign: TextAlign.center,
                            width: MediaQuery.of(context).size.width * 0.40),
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
