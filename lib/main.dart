import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/views/otp/beneficiary_otp.dart';
import 'package:ara_smart_app/views/otp/enter_password_otp.dart';

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
      home: const Enter_password_otp(),
    );
  }
}

// class Test extends StatefulWidget {
//   const Test({Key? key}) : super(key: key);

//   @override
//   State<Test> createState() => _TestState();
// }

// class _TestState extends State<Test> {
//   List billersList = [];
//   List<BillerModel> newList = [];

//   getDbdata() async {
//     billersList.clear();

//     var box = await Hive.openBox('billbox');
//     billersList = box.get("billers");
//     var newData = billersList.toList();

//     print(billersList.length);
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getDbdata();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(18.0),
//             child: Column(
//               children: [
//                 GetBuilder<SearchBiller>(
//                   init: SearchBiller(),
//                   initState: (_) {},
//                   builder: (_) {
//                     return Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         FutureBuilder(
//                             future: getDbdata(),
//                             builder: (context, snapshot) {
//                               return Column(
//                                 children: [
//                                   AppText(
//                                     text: billersList.toString(),
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                   AppText(
//                                     text: billersList.runtimeType.toString(),
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ],
//                               );
//                             }),
//                         ElevatedButton(
//                           onPressed: () async {
//                             await getDbdata();
//                           },
//                           child: AppText(text: "add User"),
//                         ),
//                       ],
//                     );
//                   },
//                 ),
//                 GetBuilder<BillerController>(
//                   init: BillerController(),
//                   initState: (_) {},
//                   builder: (_) {
//                     return Column(
//                       children: [
//                         TextFormField(
//                           controller: _.balance,
//                         ),
//                         ElevatedButton(
//                           onPressed: () async {
//                             await _.createNewBiller();
//                           },
//                           child: Text("getsUsers"),
//                         ),
//                       ],
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
