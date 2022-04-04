import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lession14_getx_app/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //GetMaterialApp dùng để điều hướng chuyển trang giữa các màn hình
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
