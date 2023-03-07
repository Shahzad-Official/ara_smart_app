import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/constants/svg_icons.dart';
import 'package:ara_smart_app/database/user_data.dart';
import 'package:ara_smart_app/views/welcome_home/first_welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  UserData _userData = UserData();
  initializeDB() async {
    var box = await Hive.openBox('myBox');
    box.put("users", _userData.registeredUsers);
    var list = box.get("users");
    print(list);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializeDB();
  }

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
