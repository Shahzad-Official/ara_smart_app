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
  List<BillerModel> currentBiller = [];
  List<BillerModel> billersList = [];

  TextEditingController name = TextEditingController();
  isValidUser() async {
    billersList.clear();

    var box = await Hive.openBox('billbox');
    _usersList = box.get("billers");
    var newData = _usersList.toList();

    for (var i in newData) {
      billersList.add(BillerModel.fromJson(i));
    }
    print(billersList);

    currentBiller.clear();
    currentBiller = billersList.where((element) {
      if (element.name == name.text.trim()) {
        return true;
      } else {
        return false;
      }
    }).toList();
    if (currentBiller.isNotEmpty) {
      return currentBiller;
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
