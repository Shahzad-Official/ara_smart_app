import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/controllers/search_biller.dart';
import 'package:ara_smart_app/models/biller_model.dart';

import 'package:ara_smart_app/views/splash_screen.dart';
import 'package:ara_smart_app/widgets/app_text.dart';

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
//   var _billersList = [];
//   List<BillerModel> billersList = [];

//   getDbdata() async {
//     billersList.clear();

//     var box = await Hive.openBox('billbox');
//     _billersList = box.get("billers");
//     var newData = _billersList.toList();

//     for (var i in newData) {
//       billersList.add(BillerModel.fromJson(i));
//     }
//     print(billersList.length);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(18.0),
//           child: Column(
//             children: [
//               GetBuilder<SearchBiller>(
//                 init: SearchBiller(),
//                 initState: (_) {},
//                 builder: (_) {
//                   return Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       FutureBuilder(
//                           future: getDbdata(),
//                           builder: (context, snapshot) {
//                             return AppText(
//                               text: _billersList.toString(),
//                               fontWeight: FontWeight.w500,
//                             );
//                           }),
//                       ElevatedButton(
//                         onPressed: () async {},
//                         child: AppText(text: "add User"),
//                       ),
//                     ],
//                   );
//                 },
//               ),
//               GetBuilder<SearchBiller>(
//                 init: SearchBiller(),
//                 initState: (_) {},
//                 builder: (_) {
//                   return Column(
//                     children: [
//                       TextFormField(
//                         controller: _.name,
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
