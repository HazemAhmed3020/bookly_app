import 'package:bookly_app/features/home_page/data/models/books_model.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.booksModel});
  final BooksModel booksModel;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
      Text(
        booksModel.title ,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontFamily: 'GT Sectra Fine Regular',
        ),
      ),
      const SizedBox(height: 10),
      Text(
        booksModel.author,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.blueGrey,
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
      const SizedBox(height: 20),
      SizedBox(
        height: 18,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '⭐ ${booksModel.rating} ',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              ' (${booksModel.count})',
              textAlign: TextAlign.end,
              style: const TextStyle(
                color: Colors.white12,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    ],
    );
  }
}
