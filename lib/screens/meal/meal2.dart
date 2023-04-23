// ignore_for_file: prefer_const_constructors

import 'package:diet_app/screens/bottombar.dart';
import 'package:flutter/material.dart';

class MealScreen2 extends StatefulWidget {
  const MealScreen2({super.key});

  @override
  State<MealScreen2> createState() => _MealScreen2State();
}

class _MealScreen2State extends State<MealScreen2> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/18.png"))),
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
              height: 50,
            ),
            Center(
              child: Container(
                height: 396,
                width: 361,
                decoration: BoxDecoration(
                    color: Color(0xffFFB3B3),
                    borderRadius: BorderRadius.circular(40)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 69,
                    ),
                    Text(
                      "Good job! \nYou’re eating healthy!",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 32),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: 242,
                        height: 225,
                        child: Image.asset(
                          "assets/17.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BottomBar()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                  foregroundColor: Colors.black,
                  backgroundColor: Color(0xffFFB3B3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
                child: const Text('Done'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
