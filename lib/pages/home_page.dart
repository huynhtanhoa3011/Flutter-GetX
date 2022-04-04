import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lession14_getx_app/models/information.dart';
import 'package:lession14_getx_app/pages/information_page.dart';
import 'package:lession14_getx_app/resources/strings.dart';
import 'package:lession14_getx_app/resources/widgets/common_widgets.dart';
//trang chủ
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController nameController, zaloController, websiteController, descriptionController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController = TextEditingController();
    zaloController = TextEditingController();
    websiteController = TextEditingController();
    descriptionController = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(INFORMATION_INPUT),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              inputWidget(lable: NAME, hintText: NAME_INPUT, controller: nameController),
              inputWidget(lable: ZALO, hintText: ZALO_INPUT, controller: zaloController),
              inputWidget(lable: WEBSITE, hintText: WEBSITE_INPUT, controller: websiteController),
              inputWidget(lable: DESCRIPTION, hintText: DESCRIPTION_INPUT, controller: descriptionController),
              buttonWidget(
                  lable: CONFIRM,
                  colorButton: Colors.blue,
                  colorText: Colors.white,
                  onPress: () {
                    //tính năng cập nhật thông tin lên provider
                    Get.put(Information()).updateInformation(
                      name: nameController.text,
                      zalo: zaloController.text,
                      website: websiteController.text,
                      description: descriptionController.text,
                    );
                    Get.to(InformationPage());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
