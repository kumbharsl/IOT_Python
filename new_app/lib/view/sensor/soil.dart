import 'package:flutter/material.dart';

class Soil extends StatefulWidget {
  const Soil({super.key});

  @override
  State createState() => _AboutUs();
}

class _AboutUs extends State<Soil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: const Text(
          "Soil moisture Sensor",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
