<<<<<<< HEAD
// ignore_for_file: camel_case_types

=======
import 'package:app_flutter/controllers/databaseController.dart';
>>>>>>> 53cec4492d97466ed53ae2420c6bd0d5f72071d5
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
<<<<<<< HEAD
class _HomeState extends State<ListUser> {

      
  
=======

class _HomeState extends State<ListUser> {
>>>>>>> 53cec4492d97466ed53ae2420c6bd0d5f72071d5
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
<<<<<<< HEAD
        body: Center(
          
          child: Container(
            
          ),
            
=======
        body: FutureBuilder(
          
            future: DatabaseController().selectdata(),
            // ignore: non_constant_identifier_names
            builder: (context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                  
                  child: Column(
                    
                      mainAxisAlignment: MainAxisAlignment.center,
                  
                      children: [
                        Text("la requete executee a un probleme !!! veiller verifier votre requete svp et ressayer")
                      ]),
                );
              }
              // ignore: prefer_is_empty
              if (snapshot.data!.length == 0) {
                return const Center(
                  // ignore: unnecessary_const
                  child: const Padding(
                      padding: EdgeInsets.all(20),
                    child: Text("Aucun utisateur pour le moment",),
                    
                    )

                  
                );
              }
              return ListView.builder(
                itemCount: snapshot.data == null?0 :snapshot.data?.length,
                itemBuilder: ((context, item) {
                  // ignore: avoid_unnecessary_containers
                  return Container(
                    child: const Center(
                      child: Column(
                        children: [
                          Text("voici la liste des utlisateur present dasn la base de donnees"),
                        ],
                      ),
                    ),
                  );
                })
                
              );
            }
>>>>>>> 53cec4492d97466ed53ae2420c6bd0d5f72071d5
          ),
      ),
    );
  }
}
