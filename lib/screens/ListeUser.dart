// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
// import 'package:flutter_session_manager/flutter_session_manager.dart';

class ListUser extends StatefulWidget {
  const ListUser({super.key});

  //  ignore: empty_constructor_bodies
  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() {
    return _HomeState();
  }
}
class _HomeState extends State<ListUser> {

      
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        title: const Text("liste des utilisateurs"),
        titleTextStyle: const TextStyle(
          fontSize: 25.0,
          color: Colors.amberAccent,
        ),
      ),
        body: Center(
          
          child: Container(
            
          ),
            
          ),
      ),
    );
  }
}
