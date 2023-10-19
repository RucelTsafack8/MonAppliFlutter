import 'package:app_flutter/controllers/databaseController.dart';
import 'package:app_flutter/screens/guest/connexion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:flutter_session_manager/flutter_session_manager.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  //  ignore: empty_constructor_bodies
  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() {
    return _HomeState();
  }
}

class _HomeState extends State<RegisterPage> {
  final bool _isSecret = true;
  // String get info => "Bienvenue sur l'apllication de formation";
  /// backend de validation de formulaire
  final GlobalKey<FormState> form = GlobalKey<FormState>();
  // ignore: non_constant_identifier_names
  final Nomcontroller = TextEditingController();
  // ignore: non_constant_identifier_names
  final Emailcontroller = TextEditingController();
  // ignore: non_constant_identifier_names
  String TravailUser = "-1";
  // ignore: non_constant_identifier_names
  final MotDePassecontroller = TextEditingController();

  ///uploader une image
  ///

  ///le dispose de la minimalisation de l'application
  @override
  Future<void> dispose() async {
    super.dispose();

    Nomcontroller.dispose();
    Emailcontroller.dispose();

    MotDePassecontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // var  Email ='';
    return SafeArea(
      child: Scaffold(
        /**titre de la page */
        appBar: AppBar(
          title: const Text("Inscription "),
          titleTextStyle: const TextStyle(
            fontSize: 30.0,
          ),
        ),
        /**contenu de la page contenant les images et du texte */
        body: Form(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: form,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/connection.svg',
                    // ignore: deprecated_member_use
                    color: Colors.yellowAccent,
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(
                    height: 15.2,
                  ),
                  Text(
                    'inscription '.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 25.5,
                      color: Colors.yellow,
                      fontFamily: 'Agency',
                    ),
                  ),
                  // Text(Email as String),
                  const SizedBox(
                    height: 25.2,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email)),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ("Veuillez saisir votre email de connexion");
                      }
                      return null;
                    },
                    controller: Emailcontroller,
                  ),
                  const SizedBox(
                    height: 13.2,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                        labelText: "nom et prenom",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person)),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ("Veuillez saisir votre nom et prenom");
                      }
                      return null;
                    },
                    controller: Nomcontroller,
                  ),
                  const SizedBox(
                    height: 12.1,
                  ),

                  const SizedBox(
                    height: 12.1,
                  ),
                  DropdownButtonFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.work),
                      ),
                      items: const [
                        DropdownMenuItem(
                          value: '-1',
                          child: Text(
                              '------------------selectioner un Travail-------'),
                        ),
                        DropdownMenuItem(
                          value: 'Etudiant informatique',
                          child: Text('Etudiant informatique'),
                        ),
                        DropdownMenuItem(
                          value: 'Debutant Programmation',
                          child: Text('Debutant Programmation'),
                        ),
                        DropdownMenuItem(
                          value: 'Developpeur Web',
                          child: Text('Develloppeur Web'),
                        ),
                        DropdownMenuItem(
                          value: 'Developpeur App',
                          child: Text('Develloppeur App'),
                        ),
                        DropdownMenuItem(
                          value: 'Data Analist/Scientist',
                          child: Text('Data Analist/Scientist'),
                        ),
                        DropdownMenuItem(
                          value: 'Developpeur IA',
                          child: Text('Developpeur IA'),
                        ),
                        DropdownMenuItem(
                          value: 'Autre Travail',
                          child: Text('Autre Travail'),
                        ),
                      ],
                      value: TravailUser,
                      onChanged: (value) {
                        setState(() {
                          TravailUser = value!;
                        });
                      }),
                  const Padding(padding: EdgeInsets.all(10)),
                  TextFormField(
                    obscureText: _isSecret,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                        labelText: "Mot De Passe",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock)),
                    validator: (value) {
                      if (value == null || value.isEmpty && value.length <= 3) {
                        return ("Veuillez saisir un mot de passe plus de 8 caracteres");
                      }
                      return null;
                    },
                    controller: MotDePassecontroller,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 15.2,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        padding: MaterialStatePropertyAll(EdgeInsets.all(10)),
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.limeAccent),
                      ),
                      onPressed: () {
                        if (form.currentState!.validate()) {
                          // ignore: non_constant_identifier_names
                          final NomPrenom = Nomcontroller.text;
                          // ignore: non_constant_identifier_names
                          final Travail = TravailUser;
                          // ignore: non_constant_identifier_names
                          final Email= Emailcontroller.text;
                          // ignore: non_constant_identifier_names
                          final MotDePasse = MotDePassecontroller.text;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                              // arguments: {'Email':Email},
                            ),
                          );

                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                            "le nom: $NomPrenom et le travail: $Travail .....et le mot de passe est $MotDePasse et l'email est $Email",
                        
                          )));
                          FocusScope.of(context).requestFocus(FocusNode());

                          ///insertion d'un utilisateur dans la base de donnees
                          //ignore: non_constant_identifier_names
                          DatabaseController().add(Email, MotDePasse, NomPrenom, Travail);
                         


                        }
                      },
                      child: const Text("Envoyer",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontFamily: 'AlamedaScript_PERSONAL_USE_ONLY',
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
