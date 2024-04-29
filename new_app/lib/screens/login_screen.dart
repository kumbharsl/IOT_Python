import 'dart:async';

import 'package:agreeculture/home/home.dart';
import 'package:agreeculture/main.dart';
import 'package:agreeculture/model/login_model.dart';
import 'package:agreeculture/screens/forgot_screen.dart';
import 'package:agreeculture/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:agreeculture/screens/signup_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sqflite/sqflite.dart';

dynamic database;
//Login Database.
Future<void> insertData(LoginModel obj) async {
  final localDB = await database;

  await localDB.insert(
    'Sign',
    obj.loginMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

// Future<List> retData() async {
//   final localDB = await database;
//   List retList = await localDB.query("Sign");
//   return List.generate(
//     retList.length,
//     (i) {
//       return LoginModel(
//         name: retList[i]['name'],
//         phone: retList[i]['phone'],
//         email: retList[i]['email'],
//         password: retList[i]['password'],
//       );
//     },
//   );
// }

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});
  @override
  State<SignInScreen> createState() => _SignInScreen();
}

class _SignInScreen extends State<SignInScreen> {
  final _formSignInKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool rememberPassword = true;
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          const Expanded(
            flex: 1,
            child: SizedBox(
              height: 10,
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              padding: const EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Form(
                  key: _formSignInKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Welcome back',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      TextFormField(
                        controller: email,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Email';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          label: const Text('Email'),
                          hintText: 'Enter Email',
                          hintStyle: const TextStyle(
                            color: Colors.black26,
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12, // Default border color
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12, // Default border color
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      TextFormField(
                        controller: password,
                        obscureText: true,
                        obscuringCharacter: '*',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Password';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          label: const Text('Password'),
                          hintText: 'Enter Password',
                          hintStyle: const TextStyle(
                            color: Colors.black26,
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12, // Default border color
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12, // Default border color
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: rememberPassword,
                                onChanged: (bool? value) {
                                  setState(() {
                                    rememberPassword = value!;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                              const Text(
                                'Remember me',
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (e) => const FormatScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              'Forget password?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            bool checkValidation =
                                _formSignInKey.currentState!.validate();
                            if (checkValidation) {
                              bool flag = false;
                              for (int i = 0; i < data.length; i++) {
                                if (data[i].emailId == email.text &&
                                    data[i].password == password.text) {
                                  flag = true;
                                }
                              }
                              if (flag == true) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    backgroundColor: Colors.white,
                                    content: Text(
                                      'Login Succesfull',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                );
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (e) => const HomeScreen(),
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(
                                          'Please enter valid email & password')),
                                );
                              }
                              //   ScaffoldMessenger.of(context).showSnackBar(
                              //     const SnackBar(
                              //       backgroundColor: Colors.white,
                              //       content: Text(
                              //         'Login Succesfull',
                              //         style: TextStyle(
                              //             color: Colors.green,
                              //             fontSize: 17,
                              //             fontWeight: FontWeight.bold),
                              //       ),
                              //     ),
                              //   );
                              //   Navigator.pushReplacement(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (e) => const HomeScreen(),
                              //     ),
                              //   );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  backgroundColor: Colors.red,
                                  content: Text(
                                    'Please Enter Email & Password',
                                  ),
                                ),
                              );
                            }

                            // if (_formSignInKey.currentState!.validate() &&
                            //     rememberPassword) {
                            // } else if (!rememberPassword) {}
                          },
                          child: const Text('Sign In'),
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 0.7,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 10,
                            ),
                            child: Text(
                              'Sign In with',
                              style: TextStyle(
                                color: Colors.black45,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 0.7,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Brand(Brands.google),
                          Brand(Brands.twitterx),
                          Brand(Brands.facebook),
                          Brand(Brands.git),
                        ],
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      // don't have an account
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Don\'t have an account? ',
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (e) => const SignUnScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              'Sign up',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // const SizedBox(
                      //   height: 20.0,
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
