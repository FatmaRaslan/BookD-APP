import 'package:buttombar/screens/explore_screen.dart';
import 'package:buttombar/screens/feed_screen.dart';
import 'package:buttombar/screens/log_in.dart';
import 'package:buttombar/screens/profile_screen.dart';
import 'package:buttombar/screens/sign_up.dart';
import 'package:buttombar/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen>{
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
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    
       return MaterialApp(
      title: 'BookD App',
      home: SplashScreen(),
      routes: {
        '/signup': (context) => SignUp(),
        '/login': (context) => Login(),
        '/main': (context) => const MainScreen(),
        '/feed': (context) => FeedScreen(),
        '/explore': (context) => ExploreScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
