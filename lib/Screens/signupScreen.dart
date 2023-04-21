import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  // Define a list of cartoon images
  final List<String> cartoonImages = [
    'assets/cartoon1.png',
    'assets/cartoon2.png',
    'assets/cartoon3.png',
    'assets/cartoon4.png',
  ];

  // Keep track of the selected image
  int selectedImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Display the selected image
          Expanded(
            child: Container(
              width: 200,
              height: 200,
              child: Image.asset(
                cartoonImages[selectedImageIndex],
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Add arrow buttons to scroll through the images
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  setState(() {
                    selectedImageIndex =
                        (selectedImageIndex - 1) % cartoonImages.length;
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  setState(() {
                    selectedImageIndex =
                        (selectedImageIndex + 1) % cartoonImages.length;
                  });
                },
              ),
            ],
          ),
          // Add a continue button to move to the next screen
          ElevatedButton(
            child: Text('Continue'),
            onPressed: () {
              // TODO: Navigate to the next screen
            },
          ),
        ],
      ),
    );
  }
}
