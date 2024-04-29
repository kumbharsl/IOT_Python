import 'package:flutter/material.dart';

class ArdUno extends StatefulWidget {
  const ArdUno({super.key});

  @override
  State createState() => _AboutUs();
}

class _AboutUs extends State<ArdUno> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: const Text(
          "Arduino Uno",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
