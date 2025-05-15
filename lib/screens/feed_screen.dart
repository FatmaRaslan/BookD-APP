import 'package:flutter/material.dart';
import 'book_page.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});
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
                hintText: 'Search for book....',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onChanged: (value) {},
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => const BookPage(
                        bookTitle: 'Trending Books',
                        author: 'Unknown',
                        imageUrl: 'images/11.jpg',
                        description:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.  quisque faucibus ex sapien.  vitae pellentesque in id. Placerat in id cursus mi pretium tellus duis!',
                        rating: 4.0,
                        pageCount: 200,
                        readersCount: 100,
                      ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 250,
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(.0),
                      child: Image(
                        image: AssetImage('images/11.jpg'),
                        width: 200,
                        height: 220,
                      ),
                    ),
                    Expanded(
                      // Use Expanded to take up available space
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 8.0,
                        ), // Add some left padding
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment
                                  .start, // Align text to the start
                          mainAxisAlignment:
                              MainAxisAlignment
                                  .center, // Vertically center the text
                          children: const [
                            Text(
                              'Trending Books!',
                              style: TextStyle(
                                fontSize: 21,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '\nLorem ipsum dolor sit  con\nadipiscing elit.  quisque faucibus ex sapien.Ex \n sapien vitae pellentesque \nin id. Placerat in id cursus \nmi pretium tellus duis!',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceAround, // Distribute children evenly
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => const BookPage(
                              bookTitle: '“Toxic” ',
                              author: 'Nicole Blanchard',
                              imageUrl: 'images/33.jpg',
                              description: "Lorem ipsum...",
                              rating: 3.5,
                              pageCount: 180,
                              readersCount: 90,
                            ),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 230,
                    width: 180,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: const [
                          Text(
                            '“Toxic” By Nicole Blanchard sparks controversy despite the fame, the reasons??',
                            style: TextStyle(
                              fontSize: 21,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(2)),
                          Text(
                            ' Lorem ipsum dolor sit  conse adipiscing ....',
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
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => const BookPage(
                              bookTitle: 'Ana Huang’s latest release',
                              author: 'Ana Huang',
                              imageUrl: 'images/55.jpg',
                              description: "Description",
                              rating: 4.7,
                              pageCount: 400,
                              readersCount: 200,
                            ),
                      ),
                    );
                  },
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
                        children: const [
                          Text(
                            '  Ana Huang’s\n\tlatest release',
                            style: TextStyle(
                              fontSize: 21,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(2)),
                          Image(
                            image: AssetImage('images/55.jpg'),
                            height: 150,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => const BookPage(
                        bookTitle: 'Check out from Lucy Score',
                        author: 'Lucy Score',
                        imageUrl: 'images/33.jpg',
                        description: "Description",
                        rating: 4.2,
                        pageCount: 320,
                        readersCount: 180,
                      ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 4),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 100,
                child: Row(
                  children: [
                    const Image(
                      image: AssetImage('images/33.jpg'),
                      width: 75,
                      height: 90,
                    ),
                    const Image(
                      image: AssetImage('images/44.jpg'),
                      width: 75,
                      height: 90,
                    ),
                    const Image(
                      image: AssetImage('images/55.jpg'),
                      width: 75,
                      height: 90,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 10)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Check out from\n Lucy Score:',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Lorem ipsum...',
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
          ),
        ],
      ),
    );
  }
}
