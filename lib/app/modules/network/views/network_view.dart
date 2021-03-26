import 'package:flutter/material.dart';

import 'package:get/get.dart';

class NetworkView extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NetworkView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'NetworkView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
