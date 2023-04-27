// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'diet/diet.dart';
import 'meal/home.dart';
import 'profile/profile.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex_ = 0;
  List pages = [HomeScreen(), DietScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          pages.elementAt(selectedIndex_),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.01, vertical: height * 0.04),
            child: Align(
              alignment: Alignment(0.0, 1.0),
              child: GlassmorphicContainer(
                alignment: Alignment.bottomCenter,
                borderGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: const [Color(0xFFFFC107), Color(0xFFFFC107)],
                ),
                blur: 20,
                border: 2,
                width: width,
                borderRadius: 50,
                height: 60,
                linearGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: const [
                      Color(0xFFFFC107),
                      Color(0xFFFFC107)
                    ],
                    stops: const [
                      0.1,
                      1,
                    ]),
                margin: EdgeInsets.symmetric(horizontal: width * 0.16),
                child: GNav(
                    selectedIndex: selectedIndex_,
                    onTabChange: (index) {
                      setState(() {
                        selectedIndex_ = index;
                      });
                    },
                    backgroundColor: Color(0xFFFFC107),
                    color: Color(0xff3E3F41),
                    activeColor: Color(0xff3E3F41),
                    padding: EdgeInsets.all(height * 0.025),
                    gap: 10,
                    tabs: const [
                      GButton(
                        icon: Icons.pie_chart_sharp,
                        text: 'Meal',
                        textColor: Colors.white,
                        backgroundColor: Color(0xffF13D3C),
                      ),
                      GButton(
                        icon: Icons.local_dining_sharp,
                        text: 'Diet',
                        textColor: Colors.white,
                        backgroundColor: Color(0xffF16B6A),
                      ),
                      GButton(
                        icon: Icons.person,
                        text: 'Profile',
                        textColor: Colors.white,
                        backgroundColor: Color(0xffA58A55),
                      ),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
