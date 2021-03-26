import 'package:get/get.dart';

import 'package:mechanicfinder/app/modules/home/bindings/home_binding.dart';
import 'package:mechanicfinder/app/modules/home/views/home_view.dart';
import 'package:mechanicfinder/app/modules/network/bindings/network_binding.dart';
import 'package:mechanicfinder/app/modules/network/views/network_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.NETWORK,
      page: () => NetworkView(),
      binding: NetworkBinding(),
    ),
  ];
}
