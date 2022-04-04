import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lession14_getx_app/models/information.dart';
import 'package:lession14_getx_app/resources/strings.dart';
import 'package:lession14_getx_app/resources/widgets/common_widgets.dart';
// trang hiển thị thông tin với dữ liệu khi xác nhận
class InformationPage extends StatefulWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    final Information information = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text(INFORMATION),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            informationWidget(lable: NAME, content: information.name), Divider(),
            informationWidget(lable: ZALO, content: information.zalo), Divider(),
            informationWidget(lable: WEBSITE, content: information.website), Divider(),
            informationWidget(lable: DESCRIPTION, content: information.description), Divider(),
          ],
        ),
      ),
    );
  }
}
