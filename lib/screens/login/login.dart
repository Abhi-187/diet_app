//login screen implementation with firebase authentication
// ignore_for_file: prefer_const_constructors

import 'package:diet_app/screens/login/phonenumber.dart';
import 'package:flutter/material.dart';

import '../signup/signup.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF3D2),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 178),
            Text(
              'Welcome',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 20),
            Text(
              'to',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Fit",
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
                  "Fun",
                  style: TextStyle(
                    fontSize: 54,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 94),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PhoneNumberScreen()),
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
              child: const Text('Login'),
            ),
            SizedBox(height: 43),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  foregroundColor: Colors.black,
                  elevation: 0,
                  backgroundColor: Color(0xffFFF3D2),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
                child: Text('Sign Up')),
            SizedBox(height: 66),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Expanded(
                  child: Divider(
                    color: Colors.black,
                    thickness: .3,
                  ),
                ),
                SizedBox(width: 20),
                Text('OR'),
                SizedBox(width: 20),
                Expanded(
                  child: Divider(
                    color: Colors.black,
                    thickness: .3,
                  ),
                ),
              ],
            ),
            SizedBox(height: 34),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
