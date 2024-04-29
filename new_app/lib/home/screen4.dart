import 'package:agreeculture/view/sensor/arduino.dart';
import 'package:agreeculture/view/sensor/bread.dart';
import 'package:agreeculture/view/sensor/dht.dart';
import 'package:agreeculture/view/sensor/mq.dart';
import 'package:agreeculture/view/sensor/soil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State createState() => _Screen4();
}

class _Screen4 extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: const Text(
          "Project Info",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade200,
      extendBody: true,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              // MQ-2 sensor
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (e) => const MqSensor(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 8,
                        color: Colors.grey,
                        offset: Offset(5, 5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              // borderRadius: BorderRadius.all(Radius.circular(radius)),
                              // border: Border.all(color: Colors.black),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/gas.png",
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          const Text(
                            "MQ-2 Gas Sensor",
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // DHT11 sensor
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (e) => const DhtSensor(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 8,
                        color: Colors.grey,
                        offset: Offset(5, 5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              // borderRadius: BorderRadius.all(Radius.circular(radius)),
                              // border: Border.all(color: Colors.black),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/dht11.png",
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          const Text(
                            "DHT11 Sensor",
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // soil moisture sensor
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (e) => const Soil(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 8,
                        color: Colors.grey,
                        offset: Offset(5, 5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              // borderRadius: BorderRadius.all(Radius.circular(radius)),
                              // border: Border.all(color: Colors.black),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/water.png",
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          const Text(
                            "Soil moisture Sensor",
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (e) => const ArdUno(),
                    ),
                  );
                },
                child: Container(
                  // margin: const EdgeInsets.all(12),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 8,
                        color: Colors.grey,
                        offset: Offset(5, 5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              // borderRadius: BorderRadius.all(Radius.circular(radius)),
                              // border: Border.all(color: Colors.black),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/ard.png",
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          const Text(
                            "Arduino Uno",
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (e) => const BreadBoard(),
                    ),
                  );
                },
                child: Container(
                  // margin: const EdgeInsets.all(12),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 8,
                        color: Colors.grey,
                        offset: Offset(5, 5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              // borderRadius: BorderRadius.all(Radius.circular(radius)),
                              // border: Border.all(color: Colors.black),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/bb1.png",
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          const Text(
                            "Breadboard",
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
