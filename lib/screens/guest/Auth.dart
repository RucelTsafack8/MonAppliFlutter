import 'package:app_flutter/screens/guest/connexion.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_session_manager/flutter_session_manager.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  //  ignore: empty_constructor_bodies
  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() {
    return _HomeState();
  }
}

class _HomeState extends State<AuthPage> {
  // String get info => "Bienvenue sur l'apllication de formation";
  /// backend de validation de formulaire
  final GlobalKey<FormState> form = GlobalKey<FormState>();
  // ignore: non_constant_identifier_names
  final Emailcontroller = TextEditingController();

  @override
  void dispose() {
    super.dispose();

    Emailcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // ignore: unused_label, unnecessary_new
        appBar: AppBar(
          title: const Text("Premier pas"),
          titleTextStyle: const TextStyle(
            fontSize: 30.0,
            color: Colors.white,
          ),
        ),
        body: Container(
          color: Colors.lightBlue[50],
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 35.2,
                ),
                //  // ignore: prefer_const_constructors
                //  const TextStyle(
                //     backgroundColor: Colors.black12,
                //   ),
                Text(
                  'Chacun d\'entre nous a une connaissance '.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 30.1,
                    fontFamily: 'Agency',
                    fontWeight: FontWeight.w800,
                    color: Colors.teal,
                  ),
                ),
                // const Padding(padding: EdgeInsets.all(1)),
                Text(
                  'qu\'il peut partager!!!'.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 28.0,
                    fontFamily: 'Agency',
                    fontWeight: FontWeight.w700,
                    color: Colors.teal,
                  ),
                ),

                ///la fonction tolowercase  et touppercase pour mettre le texte en miniscule et respectivement en majuscule
                Text(
                  'Mais chacun a aussi une connaissance et une experience a acquerir'
                      .toUpperCase(),
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25.1,
                    fontFamily: 'Poppins',
                    color: Color.fromARGB(255, 90, 2, 85),
                  ),
                ),
                Text(
                  'de notre expertise'.toUpperCase(),
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25.0,
                    fontFamily: 'Poppins',
                    color: Color.fromARGB(255, 76, 127, 175),
                  ),
                ),
                Text(
                  'et de notre apprentissage '.toUpperCase(),
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25.0,
                    fontFamily: 'Poppins',
                    color: Color.fromARGB(255, 76, 127, 175),
                  ),
                ),
                Text(
                  'il est temps de commencer ici '.toLowerCase(),
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Poppins',
                    color: Colors.black87,
                  ),
                ),

                ///le sizedbox pour mettre de l'expace entre les textes meme fonction que le padding dans certain cas
                const SizedBox(
                  height: 15.2,
                ),
                const Padding(
                  padding: EdgeInsets.all(20),
                ),
                Form(
                  key: form,
                  child: Column(
                    ///on aligne le texte a partir du centre
                    crossAxisAlignment: CrossAxisAlignment.center,

                    ///on aligne le contenu du texte au centre
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Text(
                      //   "Entrer votre Email de connexion".toLowerCase(),
                      //   style: const TextStyle(
                      //     fontSize: 13.1,
                      //   ),
                      // ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: "nomprenom@gmail.com",
                          prefixIcon: const Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.2),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 76, 127, 175)),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Veillez entrer votre email";
                          }
                          return null;
                        },
                        controller: Emailcontroller,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 70,
                        child: ElevatedButton(
                          style: const ButtonStyle(
                            padding:
                                MaterialStatePropertyAll(EdgeInsets.all(10)),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.limeAccent),
                          ),
                          onPressed: () async {
                            if (form.currentState!.validate()) {
                              // ignore: non_constant_identifier_names
                              final Email = Emailcontroller.text;

                              // ignore: use_build_context_synchronously
                              Navigator.push(
                                context,
                              
                                MaterialPageRoute(
                                    builder: (context) =>
                                      const LoginPage(),
                                      // arguments: {'Email':Email},
                                    ),
                                    
                              );
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                                  "l'email: $Email ..............")));
                              // await SessionManager().set("Email", Email);
                            } else {}

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
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          //rucel@gmail.fr
        ),
      ),
    );
  }
}
