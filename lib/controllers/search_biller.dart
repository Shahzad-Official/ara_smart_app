import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../constants/app_colors.dart';
import '../database/user_data.dart';
import '../models/biller_model.dart';
import '../widgets/app_text.dart';

class SearchBiller extends GetxController {
  final UserData _userData = UserData();
  var _usersList = [];
  List<BillerModel> currentUser = [];
  List<BillerModel> usersList = [];

  TextEditingController name = TextEditingController();
  isValidUser() async {
    usersList.clear();

    var box = await Hive.openBox('myBox');
    _usersList = box.get("users");
    var newData = _usersList.toList();

    for (var i in newData) {
      usersList.add(BillerModel.fromJson(i));
    }

    currentUser.clear();
    currentUser = usersList.where((element) {
      if (element.name == name.text.trim()) {
        return true;
      } else {
        return false;
      }
    }).toList();
    if (currentUser.isNotEmpty) {
      return currentUser;
      // Get.off(
      //   () => const RegistrationOtp(),
      // );
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
