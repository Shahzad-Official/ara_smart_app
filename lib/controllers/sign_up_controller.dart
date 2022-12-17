import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../database/user_data.dart';
import '../models/user_model.dart';

class SignUpController extends GetxController {
  TextEditingController mobile = TextEditingController();
  TextEditingController cardNo = TextEditingController();
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController balance = TextEditingController();
  List<Map<String, dynamic>> listOfUsers = [{}];
  UserData userData = UserData();
  UserModel userModel = UserModel();
  createNewUser() async {
    userModel = UserModel(
      balance: int.parse(balance.text.trim()),
      cardNumber: cardNo.text.trim(),
      mobile: mobile.text.trim(),
      password: password.text.trim(),
      userId: userName.text.trim(),
    );

    userData.registeredUsers.add(
      userModel.toJson(),
    );
    update();
    var box = await Hive.openBox('myBox');

    box.put(
      "users",
      userData.registeredUsers,
    );

    listOfUsers = box.get("users");

    return listOfUsers;
  }
}
