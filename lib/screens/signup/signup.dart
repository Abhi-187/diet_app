// ignore_for_file: file_names, library_private_types_in_public_api, prefer_const_constructors
import 'package:diet_app/screens/signup/name.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final List<String> cartoonImages = [
    'assets/07.png',
    'assets/06.png',
    'assets/05.png',
    'assets/03.png',
  ];
  int selectedImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF3D2),
      body: Column(
        children: [
          SizedBox(
            height: 69,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Welcome",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 42),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Back!",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 42,
                    color: Color(0xffFE8A8A)),
              ),
            ],
          ),
          SizedBox(
            height: 45,
          ),
          Text(
            "Choose your favourite cartoon",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24),
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedImageIndex =
                        (selectedImageIndex + 1).abs() % cartoonImages.length;
                  });
                },
                child: Icon(
                  Icons.arrow_left_sharp,
                  size: 70,
                  color: Color(0xffFF3D00),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              SizedBox(
                width: 180,
                height: 250,
                child: Image.asset(
                  cartoonImages[selectedImageIndex],
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 167,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NameScreen()),
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
            child: const Text('Continue'),
          ),
        ],
      ),
    );
  }
}
