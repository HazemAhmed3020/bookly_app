import 'package:bookly_app/features/home_page/presentation/view/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class ListViewBooks extends StatelessWidget {
  const ListViewBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context , index){
              return const CustomBookItem();
            }
        ),
      ),
    );
  }
}
