import 'package:flutter/material.dart';

class MqSensor extends StatefulWidget {
  const MqSensor({super.key});

  @override
  State createState() => _AboutUs();
}

class _AboutUs extends State<MqSensor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: const Text(
          "MQ-2 Sensor",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/mq2.png"),
                  ),
                  // color: Colors.amber,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
