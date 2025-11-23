import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key, required this.imageUrl});
  final String imageUrl;
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
            image: DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover,
          ),
        ),
        ),
      ),
    );
  }
}
