import 'package:flutter/material.dart';
import 'package:test_learn/widgets/roundedBtn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Testing')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              child: RoundedButton(
                butName: 'Play',
                icon: Icon(Icons.play_arrow),
                callback: () {
                  print('This is Done');
                },
                textStyle: TextStyle(fontSize: 8),
              ),
            ),
            Container(
              width: 100,
              child: RoundedButton(
                butName: 'Now',
                icon: Icon(Icons.accessibility_rounded),
                callback: () {
                  print('This is Not Done');
                },
                textStyle: TextStyle(fontSize: 8),
                bgColor: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
