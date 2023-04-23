// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:diet_app/screens/meal/meal.dart';
import 'package:flutter/material.dart';

import 'option.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffFFF3D2),
      body: Column(
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
            height: 58,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 42),
            child: Text(
              "What meal did you eat?",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
            ),
          ),
          GestureDetector(
            onTap: (){
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OptionScreen()),
              );
            },
            child: Container(
              width: width,
              height: 66,
              margin: EdgeInsets.only(left: 36, top: 35, right: 36, bottom: 14),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      image: AssetImage("assets/12.jpeg"),
                      fit: BoxFit.cover),
                  border: Border.all(width: .2),
                  color: Color(0xffFFF3D2),
                  borderRadius: BorderRadius.circular(40)),
              child: Center(
                child: Text(
                  "Breakfast",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
              ),
            ),
          ),
          Container(
            width: width,
            height: 66,
            margin: EdgeInsets.only(left: 36, right: 36, bottom: 14),
            decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.dstATop),
                    image: AssetImage("assets/13.webp"),
                    fit: BoxFit.cover),
                border: Border.all(width: .2),
                color: Color(0xffFFF3D2),
                borderRadius: BorderRadius.circular(40)),
            child: Center(
              child: Text(
                "Lunch",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
          ),
          Container(
            width: width,
            height: 66,
            margin: EdgeInsets.only(left: 36, right: 36, bottom: 14),
            decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.dstATop),
                    image: AssetImage("assets/13.jpeg"),
                    fit: BoxFit.cover),
                border: Border.all(width: .2),
                color: Color(0xffFFF3D2),
                borderRadius: BorderRadius.circular(40)),
            child: Center(
              child: Text(
                "Dinner",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
          ),
          Container(
            width: width,
            height: 66,
            margin: EdgeInsets.only(left: 36, right: 36, bottom: 14),
            decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.dstATop),
                    image: AssetImage("assets/14.avif"),
                    fit: BoxFit.cover),
                border: Border.all(width: .2),
                color: Color(0xffFFF3D2),
                borderRadius: BorderRadius.circular(40)),
            child: Center(
              child: Text(
                "Snacks",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 44),
            child: Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: 153,
                height: 147,
                child: Image.asset(
                  "assets/11.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
