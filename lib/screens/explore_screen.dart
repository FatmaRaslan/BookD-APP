import 'package:flutter/material.dart';
import 'book_page.dart'; 

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search book or auther....',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onChanged: (value) {
                
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BookPage(
                      bookTitle: 'King Of Wrath',
                      author: 'Ana Huang',
                      imageUrl: 'images/1.jpg',
                      description:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Consectetur quisque faucibus ex sapien. Ex sapien vitae pellentesque in id. Placerat in id cursus mi pretium tellus duis.',
                      rating: 4.5,
                      pageCount: 480, 
                      readersCount: 2100, 
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 150,
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(.0),
                      child: Image(
                        image: AssetImage('images/1.jpg'),
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
                            'King Of Wrath ',
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
                            'adipiscing elit. Consectetur quisque faucibus ex sapien . Ex sapien vitae pellentesque ',
                            style: TextStyle(fontSize: 14, color: Colors.black87),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
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
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BookPage(
                      bookTitle: 'King Of Pride ',
                      author: 'Ana Huang',
                      imageUrl: 'images/2.jpg',
                      description:
                          'Lorem ipsum dolor sit  conse adipiscing elit. Consectetur quisque faucibus ex sapien . Ex sapien vitae pellentesque ',
                      rating: 4.2,
                      pageCount: 432, 
                      readersCount: 1850,  
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 150,
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(.0),
                      child: Image(
                        image: AssetImage('images/2.jpg'),
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
                            'King Of Pride ',
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
                            style: TextStyle(fontSize: 14, color: Colors.black87),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
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
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BookPage(
                      bookTitle: 'The Fine Print ',
                      author: 'Lauren Asher',
                      imageUrl: 'images/3.jpg',
                      description:
                          'Lorem ipsum dolor sit  conse adipiscing elit. Consectetur quisque faucibus ex sapien . Ex sapien vitae pellentesque ',
                      rating: 4.8,
                      pageCount: 350, 
                      readersCount: 1980, 
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 150,
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
                            style: TextStyle(fontSize: 14, color: Colors.black87),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
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
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BookPage(
                      bookTitle: 'You’ve Reached Sam ',
                      author: 'Dustin Thao',
                      imageUrl: 'images/4.jpg',
                      description:
                          'Lorem ipsum dolor sit  conse adipiscing elit. Consectetur quisque faucibus ex sapien . ',
                      rating: 4.0,
                      pageCount: 288, 
                      readersCount: 1550, 
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 120,
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
                            style: TextStyle(fontSize: 14, color: Colors.black87),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
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
          ),
        ],
      ),
    );
  }
}