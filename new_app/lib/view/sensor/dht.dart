import 'package:flutter/material.dart';

class DhtSensor extends StatefulWidget {
  const DhtSensor({super.key});

  @override
  State createState() => _AboutUs();
}

class _AboutUs extends State<DhtSensor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: const Text(
          "DHT11 Sensor",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
