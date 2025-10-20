import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Exercise',
      debugShowCheckedModeBanner: false, // Removes the DEBUG banner
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Layout Exercise'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Title - Row - Bottom
          children: [
            // 🔹 Top Title
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  'Flutter Layout Exercise',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),

            //  Middle Row (Start, Pause, Stop)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text('Start', style: TextStyle(fontSize: 18)),
                Text('Pause', style: TextStyle(fontSize: 18)),
                Text('Stop', style: TextStyle(fontSize: 18)),
              ],
            ),

            //  Bottom Column
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Column(
                children: const [
                  Text(
                    'Developed by Munazza Javed',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Flutter Layout Practice',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
