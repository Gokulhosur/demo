import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'choosepetpage.dart';
import 'first page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstPage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePageController extends GetxController {
  double value = 0.0;
  TextEditingController name = TextEditingController();
 // String name1 = name.text.obs;
  //increment() => value.value++;

void goToNexPage() {
    if (name.text.isNotEmpty) {
      name.clear();
     
      Get.to(() => const ChoosePetPage());
    }
  }

}
