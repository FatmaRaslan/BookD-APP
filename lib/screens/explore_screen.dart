import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});
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
            Padding(
  padding: const EdgeInsets.all(16.0),
  child: TextField(
    decoration: InputDecoration(
      hintText: 'Search book or auther....',
      prefixIcon: Icon(Icons.search),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    onChanged: (value) {
      // هنا يمكنكِ إضافة منطق البحث
    },
  ),
),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
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
                        image: AssetImage('images/1.jpg'),
                        width: 100,
                        height: 120,
                      ),
                    ),

                    Column(
                      children: [
                        Padding(padding: const EdgeInsets.only(top:7)),
                        Text(
                          'King Of Wrath ',

                          style: TextStyle(
                            fontSize: 21,
                            color: Colors.black,

                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Text(
                          '\n adipiscing elit. Consectetur \n  quisque faucibus ex sapien .\n Ex sapien vitae pellentesque ',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Icon(
                          Icons.star,
                          size: 30,
                          color: Color.fromARGB(255, 202, 185, 2),
                        ),
                    ),
                  ],
                  
                ),
                
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical:5),
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
                        image: AssetImage('images/2.jpg'),
                        width: 100,
                        height: 120,
                      ),
                    ),

                    Column(
                      children: [
                        Padding(padding: const EdgeInsets.only(top:7)),
                        Text(
                          'King Of Pride ',

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
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Icon(
                          Icons.star,
                          size: 30,
                          color: Color.fromARGB(255, 202, 185, 2),
                        ),
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
                        Padding(padding: const EdgeInsets.only(top:7)),
                        Text(
                          'The Fine Print ',

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
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Icon(
                          Icons.star,
                          size: 30,
                          color: Color.fromARGB(255, 202, 185, 2),
                        ),
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

                height: 120,
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
                        Padding(padding: const EdgeInsets.only(top:7)),
                        Text(
                          'You’ve Reached Sam ',

                          style: TextStyle(
                            fontSize: 21,
                            color: Colors.black,

                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Text(
                          '\nLorem ipsum dolor sit  conse\n adipiscing elit. Consectetur \n  quisque faucibus ex sapien . ',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Icon(
                          Icons.star,
                          size: 30,
                          color: Color.fromARGB(255, 202, 185, 2),
                        ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
