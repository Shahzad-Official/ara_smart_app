import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/widgets/app_button.dart';
import 'package:ara_smart_app/widgets/app_text.dart';
import 'package:ara_smart_app/widgets/background_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'account_pay_bill.dart';

class Manage_registered_billers extends StatelessWidget {
  String name, accountNo, balance;

  Manage_registered_billers({
    Key? key,
    required this.accountNo,
    required this.balance,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _search = TextEditingController();
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
                  const AppText(
                    text: "Manage registered billers",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const AppText(
                    text: "Previously registered bills",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 7),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(5)),
                    child: TextFormField(
                      controller: _search,
                      decoration: const InputDecoration(
                        hintText: "MEDC Electricity",
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(
                        Account_pay_bill(
                          accountNo: accountNo,
                          balance: balance,
                          name: name,
                        ),
                      );
                    },
                    child: CustomButton(
                      text: "MEDC Electricity",
                      num: "1",
                      height: 50,
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      width: MediaQuery.of(context).size.width * 0.56,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(
                        Account_pay_bill(
                          accountNo: accountNo,
                          balance: balance,
                          name: name,
                        ),
                      );
                    },
                    child: CustomButton(
                      text: "Oneic Water",
                      num: "2",
                      height: 50,
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      width: MediaQuery.of(context).size.width * 0.56,
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(
                            Account_pay_bill(
                              accountNo: accountNo,
                              balance: balance,
                              name: name,
                            ),
                          );
                        },
                        child: CustomButton(
                          text: "Continue",
                          num: "3",
                          height: 45,
                          fontSize: 17,
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
                          num: "4",
                          height: 45,
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          width: MediaQuery.of(context).size.width * 0.35,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
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
