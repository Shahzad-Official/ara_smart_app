import 'package:ara_smart_app/database/user_data.dart';
import 'package:ara_smart_app/models/biller_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class BillerController extends GetxController {
  TextEditingController billername = TextEditingController();
  TextEditingController cardNo = TextEditingController();
  TextEditingController type = TextEditingController();

  TextEditingController balance = TextEditingController();
  List<Map<String, dynamic>> listOfUsers = [{}];
  UserData userData = UserData();
  BillerModel userModel = BillerModel();
  createNewUser() async {
    userModel = BillerModel(
      balance: int.parse(balance.text.trim()),
      cardNumber: cardNo.text.trim(),
      name: billername.text.trim(),
      type: type.text.trim(),
    );

    userData.registeredBillers.add(
      userModel.toJson(),
    );
    update();
    var box = await Hive.openBox('myBox');

    box.put(
      "users",
      userData.registeredBillers,
    );

    listOfUsers = box.get("users");

    return listOfUsers;
  }
}
