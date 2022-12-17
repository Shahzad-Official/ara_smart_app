import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/views/pay_biils/Manage_registered_billers.dart';
import 'package:ara_smart_app/views/pay_biils/add_new_biller.dart';
import 'package:ara_smart_app/views/register_screens/if_exit.dart';
import 'package:ara_smart_app/widgets/app_button.dart';
import 'package:ara_smart_app/widgets/app_text.dart';
import 'package:ara_smart_app/widgets/background_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pay_bills extends StatelessWidget {
  String name, accountNo, balance;
  Pay_bills({
    Key? key,
    required this.accountNo,
    required this.balance,
    required this.name,
  }) : super(key: key);

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
                        text: "Pay Bills",
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      AppText(
                        text: "Do you want:",
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(Add_new_biller(
                        accountNo: accountNo,
                        balance: balance,
                        name: name,
                      ));
                    },
                    child: CustomButton(
                      text: "Add a new biller",
                      num: "1",
                      height: 70,
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      width: MediaQuery.of(context).size.width * 0.6,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(
                        Manage_registered_billers(
                          accountNo: accountNo,
                          balance: balance,
                          name: name,
                        ),
                      );
                    },
                    child: CustomButton(
                      text: "Manage registered \n         billers",
                      num: "2",
                      height: 77,
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      width: MediaQuery.of(context).size.width * 0.60,
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
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
                        onTap: () {
                          Get.to(() => ExitScreen());
                        },
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
