import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Scaffold(body: HomePage()));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State {
  // Default Background Color.
  Color colorCode = Colors.black12;
  final Random random = Random();

  generateRandomColor() {
    Color tmpColor = Color.fromARGB(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );

    setState(() {
      colorCode = tmpColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorCode,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: const Text('Test APP')),
        body: GestureDetector(
          onTap: () => generateRandomColor(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 770,
                  width: 411,
                  child: TextButton(
                      onPressed: () => generateRandomColor(),
                      child: Text(
                        'Hello there',
                        style: TextStyle(color: Colors.white),
                      ))),
            ],
          ),
        ));
  }
}
