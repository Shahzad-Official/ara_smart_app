import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/views/otp/transfers_account.dart';
import 'package:ara_smart_app/widgets/app_button.dart';
import 'package:ara_smart_app/widgets/app_text.dart';
import 'package:ara_smart_app/widgets/background_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Search_account extends StatelessWidget {
  const Search_account({Key? key}) : super(key: key);

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
                    text: "Between other accounts",
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                  ),
                  const AppText(
                    text: "Accounts you have previously transferred to:",
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
                      Get.to(const Transfers_account());
                    },
                    child: CustomButton(
                      text: "Tahani",
                      num: "1",
                      height: 50,
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      width: MediaQuery.of(context).size.width * 0.42,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(const Transfers_account());
                    },
                    child: CustomButton(
                      text: "Masheal",
                      num: "2",
                      height: 50,
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      width: MediaQuery.of(context).size.width * 0.42,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(const Transfers_account());
                    },
                    child: CustomButton(
                      text: "Wafa",
                      num: "3",
                      height: 50,
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      width: MediaQuery.of(context).size.width * 0.42,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: CustomButton(
                      text: "Back",
                      num: "4",
                      height: 50,
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      width: MediaQuery.of(context).size.width * 0.42,
                    ),
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
