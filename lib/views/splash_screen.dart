import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/constants/svg_icons.dart';
import 'package:ara_smart_app/views/welcome_home/first_welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      (() => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => FirstWelcome(),
            ),
          )),
    );
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.string(
              SvgIcons.logo,
              width: 150,
            ),
            const SizedBox(
              height: 20,
            ),
            const SpinKitCircle(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ],
        ),
      ),
    );
  }
}
