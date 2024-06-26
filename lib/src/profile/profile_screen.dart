import 'package:flutter/material.dart';
import 'package:flutter_project/src/profile/ProfileScreen.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "My profile",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Personal details",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfileScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "Change",
                        style:
                            TextStyle(color: Color.fromARGB(255, 255, 74, 12)),
                      ),
                    ),
                  ],
                ),
                Card(
                  // margin: EdgeInsets.all(16),
                  color: Colors.white,
                  elevation: 4,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 10, bottom: 10, left: 15),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/ousa.png",
                          width: 100,
                          height: 100,
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "ANG OUSA",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            const Text("ousa123@gmail.com"),
                            Container(
                              // width: double.infinity,
                              // height: 2,
                              width: 170,
                              decoration: BoxDecoration(
                                  // color: Colors.grey,
                                  border:
                                      Border.all(width: 1, color: Colors.grey)),
                            ),
                            const Text("+855 90110392"),
                            Container(
                              width: 170,
                              // height: 2,
                              decoration: BoxDecoration(
                                  // color: Colors.grey,
                                  border:
                                      Border.all(width: 1, color: Colors.grey)),
                            ),
                            const Text(
                              "Street 349, Tual Kork,",
                            ),
                            const Text("Phnom Penh"),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 60,
                  child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Orders",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Icon(
                              Icons.arrow_right_outlined,
                              size: 32,
                            )
                          ],
                        ),
                      )),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  height: 60,
                  child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Pending reviews",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Icon(
                              Icons.arrow_right_outlined,
                              size: 32,
                            )
                          ],
                        ),
                      )),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  height: 60,
                  child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Faq",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Icon(
                              Icons.arrow_right_outlined,
                              size: 32,
                            )
                          ],
                        ),
                      )),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  height: 60,
                  child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Help",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Icon(
                              Icons.arrow_right_outlined,
                              size: 32,
                            )
                          ],
                        ),
                      )),
                ),
                const SizedBox(
                  height: 36,
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 74, 12),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfileScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "Update",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
