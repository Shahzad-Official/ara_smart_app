import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/widgets/app_alert_dialog.dart';
import 'package:ara_smart_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.primaryColor,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              SizedBox(
                height: 300,
                child: AppAlertDialog(
                  actions: ElevatedButton(
                    onPressed: () {},
                    child: AppText(
                      text: "Click",
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ),
                  descriptionWidget: AppText(
                    text: "Description",
                    fontWeight: FontWeight.w400,
                  ),
                  titleWidget: AppText(
                    text: "Welcome",
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
