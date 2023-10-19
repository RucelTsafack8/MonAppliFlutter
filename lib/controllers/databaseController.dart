import 'package:app_flutter/constants/connectdb.dart';
import 'package:mysql1/mysql1.dart';

class DatabaseController {
  Future<String> add(
      String email, String motDePasse, String nomPrenom, String travail) async {
    // ignore: unused_local_variable
    final connect = await MySqlConnection.connect(ConnectionSettings(
        host: Connectdb.host,
        port: Connectdb.port,
        user: Connectdb.user,
        db: Connectdb.db,
        password: Connectdb.password));

    // ignore: unused_local_variable
    var insertdata1 = await connect.query(
        'INSERT INTO UTILISATEUR (Email, MotDePasse, NomPrenom, Travail) VALUES (:Email, :MotDePasse, :NomPrenom, :Travail)');
    return "insertion de l'utisateur $nomPrenom reussi";
  }

  selectdata() async {
    final connect = await MySqlConnection.connect(ConnectionSettings(
        host: Connectdb.host,
        port: Connectdb.port,
        user: Connectdb.user,
        db: Connectdb.db,
        password: Connectdb.password));

    var selectdata1 = await connect.query('SELECT * FROM UTILISATEUR');
    return selectdata1.toList();
  }
}
