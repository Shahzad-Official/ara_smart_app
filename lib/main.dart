import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/views/otp/enter_password_otp.dart';
import 'package:ara_smart_app/views/pay_biils/account_pay_bill.dart';
import 'package:ara_smart_app/views/pay_biils/reamrks_bill.dart';
import 'package:ara_smart_app/views/splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart App',
      theme: ThemeData(
        primarySwatch: AppColors().customMaterialColor(),
      ),
      home:  SplashScreen(),
    );
  }
}
