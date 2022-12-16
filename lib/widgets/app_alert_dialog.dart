import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppAlertDialog extends StatelessWidget {
  final double dialogHeight;
  final Widget titleWidget, descriptionWidget, actions;
  const AppAlertDialog({
    Key? key,
    this.dialogHeight = 200,
    required this.actions,
    required this.descriptionWidget,
    required this.titleWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05,
          ),
          height: dialogHeight,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: AppColors.primaryColor,
            ),
          ),
          child: Column(
            children: [
              titleWidget,
              const SizedBox(
                height: 20,
              ),
              descriptionWidget,
              const SizedBox(
                height: 15,
              ),
              actions,
            ],
          ),
        ),
      ),
    );
  }
}
