import 'package:agreeculture/home/home.dart';
import 'package:agreeculture/home/screen1.dart';
import 'package:agreeculture/home/screen2.dart';
import 'package:agreeculture/home/screen5.dart';
import 'package:agreeculture/screens/welcome_screen.dart';
import 'package:agreeculture/view/about_us.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({super.key});

  @override
  State createState() => _MyDrawerList();
}

class _MyDrawerList extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (e) => const HomeScreen(),
              ),
            );
          },
          child: const Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Icon(Icons.dashboard_customize),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Dashboard",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          color: Colors.black,
          thickness: 0,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (e) => const Screen5(),
              ),
            );
          },
          child: const Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Icon(Icons.person),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          color: Colors.black,
          thickness: 0,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (e) => const Screen2(),
              ),
            );
          },
          child: const Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Icon(Icons.contact_mail),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Contact us",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          color: Colors.black,
          thickness: 0,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (e) => const AboutUs(),
              ),
            );
          },
          child: const Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Icon(Icons.info_outline),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "About us",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          color: Colors.black,
          thickness: 0,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (e) => const Screen1(),
              ),
            );
          },
          child: const Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Icon(Icons.star_border),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Rate us",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          color: Colors.black,
          thickness: 0,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (e) => const WelcomeScreen(),
              ),
            );
          },
          child: const Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Icon(Icons.login_outlined),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Sign out",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          color: Colors.black,
          thickness: 0,
        ),
      ],
    );
  }
}
//   Widget menuItem() {
//     return Material(
//       child: InkWell(
//         onTap: () {},
//         child: const Padding(
//           padding: EdgeInsets.all(8),
//           child: Row(
//             children: [
//               Expanded(
//                 child: Icon(
//                   Icons.dashboard,
//                 ),
//               ),
//               Expanded(
//                 flex: 1,
//                 child: Text(
//                   "Dashboard",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 16,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// enum DrawerSections {
//   dashboard,
//   contacts,
//   events,
//   notes,
//   settings,
//   notifications,
//   // privacy_policy,
//   // send_feedback,
// }
