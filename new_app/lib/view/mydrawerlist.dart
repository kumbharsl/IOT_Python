import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class MyDrawerList extends StatefulWidget {
  const MyDrawerList({super.key});

  @override
  State createState() => _MyHeaderDrawer();
}

class _MyHeaderDrawer extends State<MyDrawerList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade200,
      height: 200,
      width: double.infinity,
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              // color: Colors.red,
              image: DecorationImage(
                image: AssetImage("assets/image.png"),
              ),
            ),
          ),
          const Text(
            "Sagar Kumbhar",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "sagarkumbhar2018@gmail.com",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
