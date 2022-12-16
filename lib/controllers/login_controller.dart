import 'dart:convert';

import 'package:ara_smart_app/database/user_data.dart';
import 'package:ara_smart_app/models/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../views/splash_screen.dart';

class LoginController extends GetxController {
  UserData _userData = UserData();
  List<UserModel> _usersList = [];
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
        () => SplashScreen(),
      );
    } else {
      Get.snackbar(
        "Error",
        "Please enter correct details",
      );
    }
  }
}
