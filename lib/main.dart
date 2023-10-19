// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:app_flutter/screens/Home.dart';
import 'package:flutter/material.dart';

// ignore: unused_import
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // ignore: non_constant_identifier_names
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

/// le noeuds de l' application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const BoxDecoration(color: Colors.indigo);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),

      home: Scaffold(
        appBar: AppBar(
          title: const Text('Digital Brain\'s'),
          titleTextStyle: const TextStyle(
            fontSize: 45.0,
            color: Colors.black,
          ),
        ),
        body: Home(),
      ),
    );
  }
}
