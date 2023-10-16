// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:app_flutter/screens/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
/// le noeuds de l' application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Digital Brain\'s'),
          titleTextStyle: 
            const TextStyle(
            fontSize: 45.0,
        ),
      ),
      body: Home(),
      
    ),
    );
  }
}
