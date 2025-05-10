import 'package:buttombar/screens/ExploreScreen.dart';
import 'package:buttombar/screens/FeedScreen.dart';
import 'package:buttombar/screens/Login.dart';
import 'package:buttombar/screens/ProfileScreen.dart';
import 'package:buttombar/screens/SignUp.dart';
import 'package:buttombar/screens/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());



class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    FeedScreen(),
    ExploreScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[400],
        backgroundColor: Colors.brown[900],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.wb_sunny_outlined),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
       return MaterialApp(
      title: 'تطبيق شاشات متعددة',
      
      routes: {
        
        '/second': (context) => SignUp(),
        '/third': (context) => Login(),
        '/Forth': (context) => FeedScreen(),
      },
    
      home: SplashScreen(),
    );
  }
}