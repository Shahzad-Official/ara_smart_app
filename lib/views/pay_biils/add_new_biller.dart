import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/controllers/biller_controller.dart';
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
              child: GetBuilder<BillerController>(
                  init: BillerController(),
                  builder: (controller) {
                    return Column(
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
                        TextFormField(
                          controller: controller.billername,
                        ),
                        const SizedBox(
                          height: 20,
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
                        TextFormField(
                          controller: controller.type,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const AppText(
                          text: "What is the account number?",
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                        TextFormField(
                          controller: controller.cardNo,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () async {
                                await controller.createNewBiller();
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
                        )
                      ],
                    );
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
