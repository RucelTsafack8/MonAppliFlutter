import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'guest/Auth.dart';

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
        body: Center(
        child: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // const SizedBox(
            //   height: 12.0,
            // ),
            SvgPicture.asset(
              'assets/images/availability-svgrepo-com.svg',
              
              width: 100,
              height: 100,
            ),
            // Image.asset(
            //   'assets/images/logo_transparent.png',
            //   width: 230,
            //   height: 230,
            
            // ),

            Text(
              'Bienvennue sur notre espace de '.toUpperCase(),
              style: const TextStyle(
                fontSize: 45.2,
                fontFamily: 'XTypewriter',
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 63, 10, 237),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 12.2,
            ),
            // const Padding(padding: EdgeInsets.all(1)),
            Text(
              'developpement pour debutant et expert du kamer'.toUpperCase(),
              style: const TextStyle(
                fontSize: 38.2,
                fontFamily: 'Agency',
                color: Color.fromARGB(255, 3, 94, 30),
              ),
              textAlign: TextAlign.center,
            ),
            const Padding(
              padding: EdgeInsets.all(30),
            ),
            ElevatedButton(
              style: 
                 const ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor:MaterialStatePropertyAll(Colors.limeAccent),
                ),
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (_, __, ___) => const AuthPage()),
                );
                // ignore: unused_label
                
              },
              child: const Text(
                'Continuer',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontFamily: 'AlamedaScript_PERSONAL_USE_ONLY',
                ),
              ),
            ),
          ],
        ),
        ),
      )),
    );
  }
}
