import 'dart:async';
import 'package:buttombar/screens/log_in.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5DC),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage('images/bookimg.png'),
            width: 196,
            height: 196,
          ),
          const SizedBox(height: 20),
          const Text(
            "BOOK'D",
            style: TextStyle(
              color: Colors.black,
              fontSize: 70,
              fontFamily: 'Italiana',
            ),
          ),
          const Text(
            "        Reader's safe haven        ",
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontFamily: 'WhisperingSignature',
            ),
          ),
        ],
      ),
    );
  }
}
