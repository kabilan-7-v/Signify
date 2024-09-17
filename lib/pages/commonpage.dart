import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:signify/pages/assignmentpage.dart';
import 'package:signify/pages/homepage.dart';
import 'package:signify/pages/learningpage.dart';
import 'package:signify/pages/profilepage.dart';

class Commonpage extends StatefulWidget {
  const Commonpage({
    super.key,
  });

  @override
  State<Commonpage> createState() => _HomepageState();
}

class _HomepageState extends State<Commonpage> {
  int selectedPage = 1;
  final pages = const [
    Assignmentpage(),
    Homepage(),
    Learningpage(),
    Profilepage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedPage],
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
          index: selectedPage,
          height: 70,
          color: const Color.fromARGB(255, 233, 223, 190),
          backgroundColor: Colors.transparent,
          animationDuration: const Duration(milliseconds: 300),
          onTap: (val) {
            setState(() {
              selectedPage = val;
            });
          },
          items: [
            SizedBox(
                width: 30,
                height: 30,
                child: Image.asset("assets/img/assignment.png")),
            SizedBox(
                width: 30,
                height: 30,
                child: Image.asset("assets/img/home (1).png")),
            SizedBox(
                width: 30,
                height: 30,
                child: Image.asset("assets/img/browser.png")),
            SizedBox(
                width: 40,
                height: 40,
                child: Image.asset("assets/img/man.png")),
          ]),
    );
  }
}
