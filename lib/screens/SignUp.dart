import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFF5F5DC),
        
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(80),
              child: Text(
                'Sign up',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 48,
                  fontFamily: 'Italiana',
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 70,
                child: Row(
                  children: [
                    Padding(padding: const EdgeInsets.only(left: 16)),
                    Text('username: \n|', style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 50,
                child: Row(
                  children: [
                    Padding(padding: const EdgeInsets.only(left: 16)),
                    Text(
                      'E-mail address:',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 97, 96, 96),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 50,
                child: Row(
                  children: [
                    Padding(padding: const EdgeInsets.only(left: 16)),
                    Text(
                      'Password:',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 97, 96, 96),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 50,
                child: Row(
                  children: [
                    Padding(padding: const EdgeInsets.only(left: 16)),
                    Text(
                      'Confirm password:',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 97, 96, 96),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {Navigator.pushNamed(context, '/third');},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF2D1300),
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Sign up',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 55,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Icon(
                        Icons.g_mobiledata,
                        size: 50,
                        color: Color(0xFF2D1300),
                      ),
                    ),
                    Text(
                      'Sign up using Google',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 55,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.facebook,
                        size: 30,
                        color: Color(0xFF2D1300),
                      ),
                    ),
                    Text(
                      '  Sign up using Facebook',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Already have an account? Login',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontFamily: 'Pacifico',
              ),
            ),
           
            ]
        ),
      ),
    );
  }
}
