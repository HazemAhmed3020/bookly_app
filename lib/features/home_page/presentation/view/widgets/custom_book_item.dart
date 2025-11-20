import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4/5,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          // height: 180, width: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.cyanAccent,
            image: const DecorationImage(image: NetworkImage('https://m.media-amazon.com/images/I/71fbdVaXfpL._AC_UF894,1000_QL80_.jpg' ), fit: BoxFit.cover,
          ),
        ),
        ),
      ),
    );
  }
}
