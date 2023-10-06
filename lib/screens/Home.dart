import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  Home({super.key});

  // ignore: empty_constructor_bodies
  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Digital Brain's"),
        ),
        body: const Center(
          child: Text('Bienvenue sur la Programmation avec Flutter'),
        ),
      ),
    );
  }
}
