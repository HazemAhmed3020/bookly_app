import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
      Text(
        'The Jungle Book',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontFamily: 'GT Sectra Fine Regular',
        ),
      ),
      SizedBox(height: 10),
      Text(
        'J.K. Rowling',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.blueGrey,
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
      SizedBox(height: 20),
      SizedBox(
        height: 18,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '⭐ 4.8 ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              ' (2390)',
              textAlign: TextAlign.end,
              style: TextStyle(
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
