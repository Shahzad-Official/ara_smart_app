import 'package:ara_smart_app/database/user_data.dart';
import 'package:hive/hive.dart';

import '../models/user_model.dart';

class RegisterUserService {
  UserModel userModel = UserModel();
  UserData userData = UserData();

  registerUser({
    required int balance,
    required String cardNO,
    required String mobile,
    required String password,
    required String userId,
  }) async {
    userModel = UserModel(
      balance: balance,
      cardNumber: cardNO,
      mobile: mobile,
      password: password,
      userId: userId,
    );

    userData.registeredUsers.add(
      userModel.toJson(),
    );

    var box = await Hive.openBox('myBox');

    box.put(
      "users",
      userData.registeredUsers,
    );
  }
}
