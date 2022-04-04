import 'package:flutter/material.dart';
import 'package:get/get.dart';
// khai báo thông tin
class Information extends GetxController {
  String name = "";
  String zalo = "";
  String website = "";
  String description = "";

  updateInformation({@required name, @required zalo, @required website, @required description}) {
    this.name = name;
    this.zalo = zalo;
    this.website = website;
    this.description = description;
    update();
  }
}