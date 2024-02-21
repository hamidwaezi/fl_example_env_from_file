import 'package:flutter/material.dart';

import 'config/env.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Env',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Env form json file'),
        ),
        body: Center(
          child: Text(const Env().printConsole()),
        ),
      ),
    );
  }
}
