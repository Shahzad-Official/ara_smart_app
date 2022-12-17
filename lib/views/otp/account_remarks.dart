import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/widgets/app_button.dart';
import 'package:ara_smart_app/widgets/app_text.dart';
import 'package:ara_smart_app/widgets/background_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Account_remarks extends StatelessWidget {
  const Account_remarks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _remarks = TextEditingController();
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
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const AppText(
                    text: "What amount would you like to transfer?",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppText(
                        text: "OMR:",
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.red,
                      ),
                      AppText(
                        text: "50.000",
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: _remarks,
                    decoration: InputDecoration(
                        hintText: "Would you like to add any remarks?",
                        hintStyle: GoogleFonts.poppins(fontSize: 13)),
                  ),
                  const SizedBox(
                    height: 66,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: CustomButton(
                          text: "Continue",
                          num: "1",
                          height: 45,
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          width: MediaQuery.of(context).size.width * 0.35,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CustomButton(
                          text: "Cancel",
                          num: "2",
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
