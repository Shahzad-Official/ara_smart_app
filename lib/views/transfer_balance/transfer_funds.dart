import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/views/transfer_balance/transfer_between_own_account.dart';
import 'package:ara_smart_app/widgets/background_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/app_button.dart';
import '../../widgets/app_text.dart';

class TransferFunds extends StatelessWidget {
  const TransferFunds({Key? key}) : super(key: key);

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
                mainAxisAlignment: MainAxisAlignment.center,
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
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const AppText(
                        text: "What type of transference do\nyou want?",
                        fontSize: 16,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(TransferBtweenOwnAccount());
                    },
                    child: CustomButton(
                        text: "Between own\naccount",
                        num: "1",
                        height: 70,
                        fontSize: 20,
                        color: Colors.white,
                        textAlign: TextAlign.center,
                        width: MediaQuery.of(context).size.width * 0.65),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: CustomButton(
                        text: "Between other\naccount",
                        num: "2",
                        height: 70,
                        fontSize: 20,
                        color: Colors.white,
                        textAlign: TextAlign.center,
                        width: MediaQuery.of(context).size.width * 0.65),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: CustomButton(
                            text: "Back",
                            num: "4",
                            height: 40,
                            fontSize: 18,
                            color: Colors.white,
                            textAlign: TextAlign.center,
                            width: MediaQuery.of(context).size.width * 0.30),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CustomButton(
                            text: "Exit",
                            num: "5",
                            height: 40,
                            fontSize: 18,
                            color: Colors.white,
                            textAlign: TextAlign.center,
                            width: MediaQuery.of(context).size.width * 0.30),
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
