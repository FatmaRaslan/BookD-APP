import 'package:flutter/material.dart';
import 'book_page.dart';  

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5DC),
      appBar: AppBar(
        title: const Text("BOOK'D"),
        backgroundColor: const Color(0xFF2D1300),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4),
          child: Container(color: Colors.blueGrey, height: 3),
        ),
        centerTitle: true,
        toolbarHeight: 110,
        titleTextStyle: const TextStyle(
          fontFamily: ('Italiana'),
          fontSize: 32,
          color: Color(0xFFF5F5DC),
        ),
      ),
      body: Column(
        children: [
          const Icon(Icons.person, size: 200, color: Color(0xFF857d6f)),
          const Text(
            'Fatima Ashraf',
            style: TextStyle(
              fontFamily: ('Italiana'),
              fontSize: 34,
              color: Color(0xFF2D1300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(Icons.book, size: 30, color: Color(0xFF2D1300)),
                  const Text(' Books: 52 ', style: TextStyle(fontSize: 22)),
                  const Icon(
                    Icons.favorite,
                    size: 30,
                    color: Color(0xFF2D1300),
                  ),
                  const Text(' Favorite: 26', style: TextStyle(fontSize: 22)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => const BookPage(
                          bookTitle: 'The Fine Print ',
                          author: 'Lauren Asher',
                          imageUrl: 'images/3.jpg',
                          description:
                              'Lorem ipsum dolor sit  conse adipiscing elit. Consectetur quisque faucibus ex sapien . Ex sapien vitae pellentesque ',
                          rating: 4.8,
                          pageCount: 350, 
                          readersCount: 1250,  
                        ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 140,
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(.0),
                      child: Image(
                        image: AssetImage('images/3.jpg'),
                        width: 100,
                        height: 120,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'The Fine Print ',
                            style: TextStyle(
                              fontSize: 21,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Lorem ipsum dolor sit  conse adipiscing elit. Consectetur quisque faucibus ex sapien . Ex sapien vitae pellentesque ',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => const BookPage(
                          bookTitle: 'You’ve Reached Sam ',
                          author: 'Dustin Thao',
                          imageUrl: 'images/4.jpg',
                          description:
                              'Lorem ipsum dolor sit  conse adipiscing elit. Consectetur quisque faucibus ex sapien . ',
                          rating: 4.0,
                          pageCount: 288,   
                          readersCount: 890,    
                        ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 140,
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(.0),
                      child: Image(
                        image: AssetImage('images/4.jpg'),
                        width: 100,
                        height: 120,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'You’ve Reached Sam ',
                            style: TextStyle(
                              fontSize: 21,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Lorem ipsum dolor sit  conse adipiscing elit. Consectetur ',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
