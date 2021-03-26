import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mechanicfinder/app/modules/network/bindings/network_binding.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      initialBinding: NetworkBinding(),
      getPages: AppPages.routes,
    ),
  );
}
