import 'package:agreeculture/home/screen2.dart';
import 'package:agreeculture/view/mydrawerlist.dart';
import 'package:agreeculture/view/myheaderdrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State createState() => _Screen1();
}

class _Screen1 extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        // backgroundColor: Colors.white,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyDrawerList(),
                MyHeaderDrawer(),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.blue.shade200,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello!",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              "Enjoy your day...",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () {},
              icon: const Badge(
                backgroundColor: Colors.green,
                label: Text(
                  "3",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
                child: Icon(
                  Icons.notifications,
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade200,
      extendBody: true,
      body: Stack(
        children: [
          Container(
            // Here the height of the container is 45% of our total height
            height: 300,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(300),
                  // topRight: Radius.circular(50),
                ),
                color: Colors.blue.shade200
                // image: DecorationImage(
                //   fit: BoxFit.fill,
                //   image: AssetImage('assets/images/image copy.png'),
                // ),
                // image: DecorationImage(
                //   alignment: Alignment.centerLeft,
                //   // image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
                // ),
                ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 12,
                      // width: 52,
                      decoration: const BoxDecoration(
                        // color: Colors.green.shade300,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 174,
                    width: double.infinity,
                    child: Card(
                      elevation: 0.1,
                      shadowColor: Colors.grey,
                      color: Colors.green.shade50,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Flexible(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "free Cunsultation",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(
                                          color: Colors.green,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  const Text(
                                      "Get free support from our customer survice"),
                                  FilledButton(
                                    onPressed: () {},
                                    child: const Text("Visit now"),
                                  ),
                                ],
                              ),
                            ),
                            // const Spacer(),
                            Image.asset(
                              fit: BoxFit.fill,
                              "assets/images/abt.png",
                              width: 140,
                              // height: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  // const Text(
                  //   "Good Morning\nSagar...",
                  //   style: TextStyle(
                  //     fontSize: 30,
                  //     fontWeight: FontWeight.w700,
                  //   ),
                  // ),
                  const SizedBox(
                    height: 20,
                  ),
                  // SearchBar(),
                  Expanded(
                    child: GridView.count(
                      clipBehavior: Clip.none,
                      crossAxisCount: 2,
                      childAspectRatio: .80,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (e) => const Screen2(),
                              ),
                            );
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              // image: DecorationImage(
                              //   fit: BoxFit.fill,
                              //   image: AssetImage('assets/images/iot1.png'),
                              // ),
                              // color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 131, 128, 128),
                                    blurRadius: 8,
                                    offset: Offset(8, 8),
                                    blurStyle: BlurStyle.normal),
                              ],
                            ),
                            // padding: const EdgeInsets.all(8),
                            child: const Padding(
                              padding: EdgeInsets.all(12),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pune, Maharashtra",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Text(
                                    "39°C",
                                    style: TextStyle(
                                      fontSize: 45,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Temperature",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            // height: 50,
                            // width: 50,
                            decoration: const BoxDecoration(
                              // image: DecorationImage(
                              //   fit: BoxFit.fill,
                              //   image: AssetImage('assets/images/solar.png'),
                              // ),
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 131, 128, 128),
                                    blurRadius: 8,
                                    offset: Offset(8, 8),
                                    blurStyle: BlurStyle.normal),
                              ],
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(12),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pune, Maharashtra",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Text(
                                    "29%",
                                    style: TextStyle(
                                      fontSize: 45,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Humidity",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              // image: DecorationImage(
                              //   fit: BoxFit.fill,
                              //   image: AssetImage('assets/images/iot1.png'),
                              // ),
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 131, 128, 128),
                                    blurRadius: 8,
                                    offset: Offset(8, 8),
                                    blurStyle: BlurStyle.normal),
                              ],
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(12),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pune, Maharashtra",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Text(
                                    "45%",
                                    style: TextStyle(
                                      fontSize: 45,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Moisture",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              // image: DecorationImage(
                              //   image: AssetImage('assets/images/rain.png'),
                              //   fit: BoxFit.fill,
                              // ),
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 131, 128, 128),
                                    blurRadius: 8,
                                    offset: Offset(8, 8),
                                    blurStyle: BlurStyle.normal),
                              ],
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(12),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pune, Maharashtra",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Text(
                                    "250",
                                    style: TextStyle(
                                      fontSize: 45,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Gas",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        // const Text("data")
                      ],
                    ),
                  ),
                  // Text("data")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
