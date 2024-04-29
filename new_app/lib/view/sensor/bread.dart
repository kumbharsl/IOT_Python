import 'package:flutter/material.dart';

class BreadBoard extends StatefulWidget {
  const BreadBoard({super.key});

  @override
  State createState() => _AboutUs();
}

class _AboutUs extends State<BreadBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: const Text(
          "Breadboard",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
