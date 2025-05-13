import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});
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
      hintText: 'Search for book....',
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

                height: 250,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(.0),
                      child: Image(
                        image: AssetImage('images/11.jpg'),
                        width: 200,
                        height: 220,
                      ),
                    ),

                    Column(
                      children: [
                        Padding(padding: const EdgeInsets.only(top: 30)),
                        Text(
                          'TRENDING BOOKS! ',

                          style: TextStyle(
                            fontSize: 21,
                            color: Colors.black,

                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Text(
                          '\nLorem ipsum dolor sit  conse\n adipiscing elit. Consectetur \n  quisque faucibus ex sapien .\n Ex sapien vitae pellentesque \n in id. Placerat in id cursus \nmi pretium tellus duis!',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 230,
                    width: 180,
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Text(
                            '“Toxic” By Nicole Blanchard sparks controversy despite the fame, the reasons?? ',
                            style: TextStyle(
                              fontSize: 21,
                              color: Colors.black,

                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(padding: const EdgeInsets.all(2)),
                          Text(
                            'Lorem ipsum dolor sit  conse adipiscing elit.Placerat in....',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 97, 96, 96),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2, vertical: 5),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 230,
                        width: 200,
                        child: Row(
                          children: [
                            Padding(padding: const EdgeInsets.only(left: 10)),
                            Text(
                              'Ana \nHuang’s \nlatest \nrelease!\nLucy \nScore:',
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Image(
                              image: AssetImage('images/55.jpg'),

                              height: 160,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 1, vertical: 2),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 100,
                child: Row(
                  children: [
                    Image(
                      image: AssetImage('images/33.jpg'),
                      width: 75,
                      height: 90,
                    ),
                    Image(
                      image: AssetImage('images/44.jpg'),
                      width: 75,
                      height: 90,
                    ),
                    Image(
                      image: AssetImage('images/55.jpg'),
                      width: 75,
                      height: 90,
                    ),
                    Padding(padding: const EdgeInsets.only(left: 10)),
                    Column(
                      children: [
                        Text(
                          'Check out from \nLucy Score: ',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Lorem ipsum dolor...',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 97, 96, 96),
                          ),
                        ),
                      ],
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
