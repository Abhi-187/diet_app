// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class GenderScreen extends StatelessWidget {
  const GenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF3D2),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 100,
              decoration: const BoxDecoration(
                color: Color(0xffFFB3B3),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: const Center(
                child: Text(
                  "Are you a boy or a girl?",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xffFFF3D2),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: Image.asset("assets/boy-icon 2.png"),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xffFFF3D2),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: Image.asset("assets/girl-icon 1.png"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
