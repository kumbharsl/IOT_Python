import 'package:agreeculture/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

List data = [];
dynamic database;

class SignUp {
  String emailId;
  String fullName;
  String password;

  SignUp({
    required this.emailId,
    required this.fullName,
    required this.password,
  });
  Map<String, dynamic> signUpMap() {
    return {"emailId": emailId, "fullName": fullName, "password": password};
  }

  @override
  String toString() {
    return "{emailId:$emailId, fullName:$fullName ,password: $password }";
  }
}

Future<void> insertSignUpData(SignUp obj) async {
  final localDB = await database;
  await localDB.insert(
    "Signup",
    obj.signUpMap(),
    conflictAlgorithm: ConflictAlgorithm.rollback,
  );
}

Future<List<SignUp>> getSignUpData() async {
  final localDB = await database;

  List<Map<String, dynamic>> data = await localDB.query("Signup");

  return List.generate(
    data.length,
    (index) => SignUp(
      emailId: data[index]['emailId'],
      fullName: data[index]['fullName'],
      password: data[index]['password'],
    ),
  );
}

Future<void> deleteSignUpData(String id) async {
  final localDB = await database;
  localDB.delete(
    'Signup',
    where: 'emailId= ?',
    whereArgs: [id],
  );
}

Future<void> updateSignUpData(SignUp obj) async {
  final localDB = await database;
  await localDB.update(
    "Signup",
    obj.signUpMap(),
    where: 'emailId=?',
    whereArgs: [obj.emailId],
  );
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database = openDatabase(
    join(await getDatabasesPath(), "SignupDB.db"),
    version: 1,
    onCreate: (db, version) {
      db.execute('''
        CREATE TABLE Signup(
          emailId TEXT PRIMARY KEY,
          fullName TEXT,
          password TEXT
        )
''');
    },
  );
  print(await getSignUpData());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}
