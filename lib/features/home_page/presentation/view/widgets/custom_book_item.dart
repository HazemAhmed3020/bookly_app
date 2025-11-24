import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key, required this.imageUrl});
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 3.5 / 5,
          child: CachedNetworkImage(
              imageUrl: imageUrl ?? 'https://m.media-amazon.com/images/I/71fbdVaXfpL._AC_UF894,1000_QL80_.jpg',
              fit: BoxFit.fill,
              placeholder: (context , url) => const Center(child: CircularProgressIndicator()),
              errorWidget: (context , url , error )=> const Icon(Icons.warning),
          ),
        ),
      ),
    );
  }
}
