import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/widgets/app_button.dart';
import 'package:ara_smart_app/widgets/app_text.dart';
import 'package:ara_smart_app/widgets/background_screen.dart';
import 'package:flutter/material.dart';

class ExitScreen extends StatelessWidget {
  const ExitScreen({Key? key}) : super(key: key);

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
                    text: "Are you sure you \n:want to exit",
                    textAlign: TextAlign.center,
                    fontSize: 25,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: CustomButton(
                      text: "Yes",
                      num: "1",
                      height: 70,
                      fontSize: 25,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: CustomButton(
                      text: "No",
                      num: "2",
                      height: 70,
                      fontSize: 25,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
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
