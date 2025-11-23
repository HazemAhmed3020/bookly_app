import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .19,
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context , index){
              return const CustomBookItem(imageUrl: 'https://m.media-amazon.com/images/I/71fbdVaXfpL._AC_UF894,1000_QL80_.jpg',);
            }
        ),
      ),
    );
  }
}



