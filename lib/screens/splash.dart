// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'login/login.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
    animation = CurvedAnimation(parent: controller, curve: Curves.easeInOut);
    controller.forward().whenComplete(() {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => LoginScreen()),
      );
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF3D2),
      body: Column(
        children: [
          SizedBox(height: 173,),
          Text(
            'Welcome',
            style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.w400
            ),
          ),
          SizedBox(height: 20),
          Text(
            'to',
            style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.w400
            ),
          ),
          SizedBox(height: 20),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const[
                Text(
                  "Fit ",
                  style: TextStyle(
                    fontSize: 54,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "'O'",
                  style: TextStyle(
                    fontSize: 54,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffFE8A8A),
                  ),
                ),
                Text(
                  " Fun",
                  style: TextStyle(
                    fontSize: 54,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          SizedBox(height: 35),
          AnimatedBuilder(
            animation: animation,
            builder: (BuildContext context, Widget? child) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.translate(
                    offset: Offset(-100 + 100 * animation.value, 0),
                    child: Image.asset(
                      'assets/01.png',
                      width: 200,
                      height: 200,
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(100 - 100 * animation.value, 0),
                    child: Image.asset(
                      'assets/02.png',
                      width: 120,
                      height: 120,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
