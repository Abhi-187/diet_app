// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class WeightScreen extends StatefulWidget {
  const WeightScreen({super.key});

  @override
  State<WeightScreen> createState() => _WeightScreenState();
}

class _WeightScreenState extends State<WeightScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Color(0xffFFF3D2),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
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
            height: 121,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 42),
            child: Text(
              "How much do you weigh?",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 26),
            child: TextFormField(
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: 250,
              height: 300,
              child: Image.asset(
                "assets/10.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => const HeightScreen()),
                // );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                foregroundColor: Colors.black,
                backgroundColor: Color(0xffFFB3B3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      topLeft: Radius.circular(40)),
                ),
              ),
              child: const Text(
                'Sign Up',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}