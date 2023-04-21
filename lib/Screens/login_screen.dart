//login screen implementation with firebase authentication
// ignore_for_file: prefer_const_constructors

import 'package:diet_app/Screens/second_login.dart';
import 'package:diet_app/Screens/signupScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF3D2),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            Text(
              'Welcome',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'to',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Fit ",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "'O'",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[800],
                  ),
                ),
                Text(
                  " Fun",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondLoginScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                foregroundColor: Colors.black,
                backgroundColor: Color(0xffFFB3B3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
              child: const Text('Login'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                  foregroundColor: Colors.black,
                  elevation: 0,
                  backgroundColor: Color(0xffFFF3D2),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
                child: Text('Sign Up')),
            SizedBox(height: 16),
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
            SizedBox(height: 16),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.phone,
                  size: 30,
                )),
          ],
        ),
      ),
    );
  }
}
