import 'package:flutter/material.dart';

class PageNotFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.cloud_off_outlined, size: 100, color: Colors.grey),
            Text('Whoops'),
            SizedBox(height: 20),
            Text('Slow or no internet connection '),
            SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    primary: Colors.white, backgroundColor: Colors.teal[600]),
                child: Text('Pull Down to Refresh'))
          ],
        ),
      ),
    );
  }
}
