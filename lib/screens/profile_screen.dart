import 'package:flutter/material.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFF5F5DC),
        appBar: AppBar(
          title: Text("BOOK'D"),
          backgroundColor: Color(0xFF2D1300),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(4),
            child: Container(color: Colors.blueGrey, height: 3),
          ),
          centerTitle: true,
          toolbarHeight: 110,
          titleTextStyle: TextStyle(
            fontFamily: ('Italiana'),
            fontSize: 32,
            color: Color(0xFFF5F5DC),
          ),
        ),
        body: Column(
          children: [
            Icon(
                        Icons.person,
                        size: 200,
                        color: Color(0xFF857d6f),
                      ),
                      Text(
                      'Fatima Ashraf',
                      style: TextStyle(
                        fontFamily: ('Italiana'),
                        fontSize: 34,
                        color: Color(0xFF2D1300),
                      ),
                    ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 70,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.book,
                        size: 30,
                        color: Color(0xFF2D1300),
                      ),
                    ),
                    Text(
                      ' Books: 52     ',
                      
                      style: TextStyle(fontSize: 22)
                    , ),
                     Icon(
                        Icons.reviews,
                        size: 30,
                        color: Color(0xFF2D1300),
                      ),
                    
                    Text(
                      ' Reviews: 26',
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
            
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),

                height: 150,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(.0),
                      child: Image(
                        image: AssetImage('images/3.jpg'),
                        width: 100,
                        height: 120,
                      ),
                    ),

                    Column(
                      children: [
                        Padding(padding: const EdgeInsets.only(top:10)),
                        Text(
                          'TRENDING BOOKS! ',

                          style: TextStyle(
                            fontSize: 21,
                            color: Colors.black,

                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Text(
                          '\nLorem ipsum dolor sit  conse\n adipiscing elit. Consectetur \n  quisque faucibus ex sapien .\n Ex sapien vitae pellentesque ',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),

                height: 110,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(.0),
                      child: Image(
                        image: AssetImage('images/4.jpg'),
                        width: 100,
                        height: 120,
                      ),
                    ),

                    Column(
                      children: [
                        Padding(padding: const EdgeInsets.only(top:10)),
                        Text(
                          'TRENDING BOOKS! ',

                          style: TextStyle(
                            fontSize: 21,
                            color: Colors.black,

                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Text(
                          '\nLorem ipsum dolor sit  conse\n adipiscing elit. Consectetur ',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                        
                      ],
                       
                    ),
                    
                  ],
                  
                ),
              ),
            ),ElevatedButton(
            child: const Text('Login'),
            
            onPressed: () {
              Navigator.pushNamed(context, '/signup'); // تسجيل
            },
          ),
          ],
          
        ),
      ),
    );
  }
}
