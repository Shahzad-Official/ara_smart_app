import 'package:ara_smart_app/constants/app_colors.dart';

import 'package:ara_smart_app/views/splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
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
      home: const SplashScreen(),
    );
  }
}

// class Test extends StatefulWidget {
//   const Test({Key? key}) : super(key: key);

//   @override
//   State<Test> createState() => _TestState();
// }

// class _TestState extends State<Test> {
//   var _usersList = [];
//   List<UserModel> usersList = [];

//   getDbdata() async {
//     usersList.clear();

//     var box = await Hive.openBox('myBox');
//     _usersList = box.get("users");
//     var newData = _usersList.toList();

//     for (var i in newData) {
//       usersList.add(UserModel.fromJson(i));
//     }
//     print(usersList.length);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(18.0),
//           child: Column(
//             children: [
//               GetBuilder<SignUpController>(
//                 init: SignUpController(),
//                 initState: (_) {},
//                 builder: (_) {
//                   return Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       FutureBuilder(
//                           future: getDbdata(),
//                           builder: (context, snapshot) {
//                             return AppText(
//                               text: _.listOfUsers.toString(),
//                               fontWeight: FontWeight.w500,
//                             );
//                           }),
//                       ElevatedButton(
//                         onPressed: () async {
//                           _.createNewUser();
//                         },
//                         child: AppText(text: "add User"),
//                       ),
//                     ],
//                   );
//                 },
//               ),
//               GetBuilder<LoginController>(
//                 init: LoginController(),
//                 initState: (_) {},
//                 builder: (_) {
//                   return Column(
//                     children: [
//                       TextFormField(
//                         controller: _.userId,
//                       ),
//                       TextFormField(
//                         controller: _.password,
//                       ),
//                       ElevatedButton(
//                         onPressed: () async {
//                           await _.isValidUser();
//                         },
//                         child: Text("getsUsers"),
//                       ),
//                     ],
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
