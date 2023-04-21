import 'package:flutter/material.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize animation controller
    _controller = AnimationController(
      duration: Duration(seconds: 4),
      vsync: this,
    );

    // Define animation
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);

    // Start animation
    _controller.forward().whenComplete(() {
      // Navigate to login screen when animation finishes
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => LoginScreen()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'to',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text(
            "Fit 'o' Fun",
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.green[800],
            ),
          ),
          SizedBox(height: 32),
          AnimatedBuilder(
            animation: _animation,
            builder: (BuildContext context, Widget? child) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.translate(
                    offset: Offset(-100 + 100 * _animation.value, 0),
                    child: Image.asset(
                      'assets/fruit1.png',
                      width: 200,
                      height: 200,
                    ),
                  ),
                  SizedBox(width: 64),
                  Transform.translate(
                    offset: Offset(100 - 100 * _animation.value, 0),
                    child: Image.asset(
                      'assets/fruit2.png',
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
