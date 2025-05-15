import 'package:flutter/material.dart';

class BookPage extends StatelessWidget {
  final String bookTitle;
  final String author;
  final String imageUrl;
  final String description;
  final double rating;
  final int pageCount; 
  final int readersCount; 

  const BookPage({
    super.key,
    required this.bookTitle,
    required this.author,
    required this.imageUrl,
    required this.description,
    required this.rating,
    required this.pageCount, 
    required this.readersCount,  
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5DC),
      appBar: AppBar(
        title: Text(bookTitle),
        backgroundColor: const Color(0xFF2D1300),
        titleTextStyle: const TextStyle(
          fontFamily: ('Italiana'),
          fontSize: 24,
          color: Color(0xFFF5F5DC),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(imageUrl, height: 290, fit: BoxFit.cover),
            ),
            const SizedBox(height: 20),
            Text(
              bookTitle,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: ('Italiana'),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'By $author',
              style: const TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 202, 185, 2),
                  size: 24,
                ),
                const SizedBox(width: 4),
                Text(
                  '$rating/5.0',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 16),
                const Icon(Icons.book, color: Colors.grey, size: 24),
                const SizedBox(width: 4),
                Text('$pageCount Pages', style: const TextStyle(fontSize: 16)),
                const SizedBox(width: 16),
                const Icon(Icons.people, color: Colors.grey, size: 24),
                const SizedBox(width: 4),
                Text(
                  '$readersCount Readers',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              'Description',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const SizedBox(height: 32),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(const SnackBar(content: Text('Add Successfully!')));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2D1300),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Add to Favorite',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
