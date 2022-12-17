import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/database/user_data.dart';
import 'package:ara_smart_app/models/user_model.dart';
import 'package:ara_smart_app/views/register_screens/registration_otp.dart';
import 'package:ara_smart_app/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final UserData _userData = UserData();
  final List<UserModel> _usersList = [];
  List<UserModel> currentUser = [];
  TextEditingController userId = TextEditingController();
  TextEditingController password = TextEditingController();
  isValidUser() {
    _usersList.clear();
    for (var i in _userData.registeredUsers) {
      _usersList.add(UserModel.fromJson(i));
    }
    currentUser.clear();
    currentUser = _usersList.where((element) {
      if (element.userId == userId.text.trim() &&
          element.password == password.text.trim()) {
        return true;
      } else {
        return false;
      }
    }).toList();
    if (currentUser.isNotEmpty) {
      Get.off(
        () => const RegistrationOtp(),
      );
    } else {
      Get.snackbar(
        "",
        "",
        backgroundColor: AppColors.primaryColor,
        borderColor: Colors.white,
        borderWidth: 1.5,
        titleText: const AppText(
          text: "Error",
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        messageText: const AppText(
          text: "Please Enter Correct Details",
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      );
    }
  }
}
