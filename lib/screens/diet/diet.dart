// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DietScreen extends StatefulWidget {
  const DietScreen({super.key});

  @override
  State<DietScreen> createState() => _DietScreenState();
}

class _DietScreenState extends State<DietScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/15.png"))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              width: 200,
              decoration: const BoxDecoration(
                color: Color(0xffFFB3B3),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        String.fromCharCode(0x1F44B),
                        style: TextStyle(fontSize: 40),
                      ),
                    ],
                  ),
                  Text(
                    "Name !",
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              )),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: width,
              height: 41,
              decoration: BoxDecoration(color: Color(0xffFFDBA4)),
              child: Center(
                child: Text(
                  "Here’s what you have been eating",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            dietCard(),
          ],
        ),
      ),
    );
  }

  dietCard() {
    return Center(
      child: Container(
        width: 358,
        height: 331,
        decoration: BoxDecoration(
            color: Color(0xffFFDBA4), borderRadius: BorderRadius.circular(24)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 23, top: 23, bottom: 5),
              child: Text(
                "Monday",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23),
              child: Text(
                "17/7/22",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24),
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: .3,
            ),
          ],
        ),
      ),
    );
  }
}
