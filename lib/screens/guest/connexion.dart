import 'package:app_flutter/screens/ListeUser.dart';
import 'package:app_flutter/screens/UserPage.dart';
import 'package:app_flutter/screens/guest/Inscription.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_session_manager/flutter_session_manager.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  //  ignore: empty_constructor_bodies
  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() {
    return _HomeState();
  }
}

class _HomeState extends State<LoginPage> {
  final _isSecret = true;

  /// backend de validation de formulaire
  final GlobalKey<FormState> form = GlobalKey<FormState>();
  // ignore: non_constant_identifier_names
  final Emailcontroller = TextEditingController();

  // ignore: non_constant_identifier_names
  final MotDePassecontroller = TextEditingController();

  ///le dispose de la minimalisation de l'application
  @override
  void dispose() {
    super.dispose();

    Emailcontroller.dispose();

    MotDePassecontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      /**titre de la page */
      appBar: AppBar(
        title: const Text("Connexion"),
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/logo_transparent.png',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(
                  height: 15.2,
                ),
                Text(
                  'connexion'.toUpperCase(),
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
                      return ("veiller saisir votre email de connexion");
                    }
                    return null;
                  },
                  controller: Emailcontroller,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: _isSecret,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      labelText: "Mot de passe",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(
                              color: Color.fromARGB(192, 168, 56, 1))),
                      prefixIcon: Icon(Icons.lock)),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ("le mot de passe ne correspond pas");
                    }
                    return null;
                  },
                  controller: MotDePassecontroller,
                ),
                const SizedBox(
                  height: 25.2,
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
                      // ignore: dead_code
                      if (form.currentState!.validate()) {
                        // ignore: non_constant_identifier_names
                        final Email = Emailcontroller.text;

                        // ignore: non_constant_identifier_names
                        final MotDePasse = MotDePassecontroller.text;

                       
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const UserPage(),
                            ),
                          );
                       
                        // return 'echec de conexion de l\'utilisateur';

                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                                "l'email est : $Email et le password est : $MotDePasse .....")));
                        FocusScope.of(context).requestFocus(FocusNode());
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
                Row(
                  children: [
                    const Text("vous avez pas encore de compte ?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (_, __, ___) =>
                                  const RegisterPage()),
                        );
                      },
                      child: Text(
                        "S'enregistrer",
                        style: TextStyle(
                            color: Colors.blueAccent.withOpacity(0.6),
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text("vous avez pas encore de compte ?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (_, __, ___) => const ListUser()),
                        );
                      },
                      child: Text(
                        "liste utilisateur",
                        style: TextStyle(
                            color: Colors.blueAccent.withOpacity(0.6),
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
