import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/widgets/app_button.dart';
import 'package:ara_smart_app/widgets/app_text.dart';
import 'package:ara_smart_app/widgets/background_screen.dart';
import 'package:flutter/material.dart';

class EnterPassword extends StatelessWidget {
  const EnterPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.primaryColor,
      child: SafeArea(
        child: Scaffold(
          body: BackgroundScreen(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  const AppText(
                    text:
                        "Enter the password sent to a phone \nnumber for one time ",
                    textAlign: TextAlign.center,
                    fontSize: 20,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  

                  
                  const AppText(text: "9 2 2 4"),
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: CustomButton(
                            text: "Continue",
                            num: "1",
                            height: 40,
                            width: MediaQuery.of(context).size.width * 0.32),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CustomButton(
                            text: "Cancel",
                            num: "2",
                            height: 40,
                            width: MediaQuery.of(context).size.width * 0.32),
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
