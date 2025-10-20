import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Widgets Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text('Material Widget', style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(height: 20),
            Image.asset('assets/images/flutter_logo.png', width: 100),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.yellow),
                SizedBox(width: 10),
                Text('Row Example'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
