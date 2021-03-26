import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mechanicfinder/app/modules/home/views/widgets/nav_bar.dart';
import 'package:mechanicfinder/app/modules/network/controllers/network_controller.dart';
import 'package:mechanicfinder/app/modules/network/views/page_not_found.dart';

int currentIndex = 0;

final List _tabIcons = List.unmodifiable([
  {'icon': 'assets/icons/shop.svg', 'title': 'Shop'},
  {'icon': 'assets/icons/explore.svg', 'title': 'Explore'},
  {'icon': 'assets/icons/cart.svg', 'title': 'Cart'},
  {'icon': 'assets/icons/favorite.svg', 'title': 'Favorites'},
  {'icon': 'assets/icons/account.svg', 'title': 'Account'},
]);
List<String> suggestions = [
  "Apple",
  "Armidillo",
  "Actual",
  "Actuary",
  "America",
  "Argentina",
  "Australia",
  "Antarctica",
  "Blueberry",
  "Cheese",
  "Danish",
  "Eclair",
  "Fudge",
  "Granola",
  "Hazelnut",
  "Ice Cream",
  "Jely",
  "Kiwi Fruit",
  "Lamb",
  "Macadamia",
  "Nachos",
  "Oatmeal",
  "Palm Oil",
  "Quail",
  "Rabbit",
  "Salad",
  "T-Bone Steak",
  "Urid Dal",
  "Vanilla",
  "Waffles",
  "Yam",
  "Zest"
];
final List<Widget> _tabs = List.unmodifiable([
  Container(),
  Container(),
  Container(),
  Container(),
]);

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final networkController = Get.find<NetworkController>();
  void onTabChanged(int index) {
    setState(() => currentIndex = index);
  }

  List<String> added = [];
  String currentText = "";
  GlobalKey<AutoCompleteTextFieldState<String>> key = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.sort, size: 30, color: Colors.grey),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        title: Obx(() => networkController.connectionStatus != 0
            ? Text(
                'Home',
                style: TextStyle(color: Colors.blueGrey),
              )
            : Text(
                '',
                style: TextStyle(color: Colors.blueGrey),
              )),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Center(
        child: Obx(() => networkController.connectionStatus.value != 0
            ? // Text(networkController.connectionStatus == 1 ? 'Wifi' : 'Mobile')
            Column(children: [
                SimpleAutoCompleteTextField(
                  key: key,
                  decoration: new InputDecoration(errorText: "Beans"),
                  controller: TextEditingController(text: "Starting Text"),
                  suggestions: suggestions,
                  textChanged: (text) => currentText = text,
                  clearOnSubmit: true,
                  textSubmitted: (text) => setState(() {
                    if (text != "") {
                      added.add(text);
                    }
                  }),
                )
              ])
            : PageNotFound()),
      ),
      bottomNavigationBar: NavBar(
        tabIcons: _tabIcons,
        activeIndex: currentIndex,
        onTabChanged: onTabChanged,
      ),
    );
  }
}
