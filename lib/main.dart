import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //Color color = const Color(0xFFFFFFFF);
    final Random random = Random();

    return Scaffold(
      backgroundColor: Color.fromARGB(
        //or with fromRGBO with fourth arg as _random.nextDouble(),
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
      ),
      //Colors.primaries[Random().nextInt(Colors.primaries.length)],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text('Test APP'),
      ),
      body: GestureDetector(
        onTap: () {
          /*
          setState(() {
            color = Color.fromARGB(
              //or with fromRGBO with fourth arg as _random.nextDouble(),
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
            );
          });
          */
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Hello there',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
