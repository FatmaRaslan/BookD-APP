import 'dart:async';
import 'package:flutter/material.dart';
import '../main.dart'; 

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    
<<<<<<< HEAD:lib/screens/splash_screen.dart
    Timer(const Duration(seconds: 3), () {
=======
    Timer(const Duration(seconds: 5), () {
>>>>>>> 5cfd6858c669343749e63a0b4a18182be0d16bf2:lib/screens/SplashScreen.dart
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainScreen()),
      );
    }
    );
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
