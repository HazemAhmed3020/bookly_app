import 'package:bookly_app/features/home_page/presentation/view/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class ListViewBestSellerItems extends StatelessWidget {
  const ListViewBestSellerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 20,
        itemBuilder: (context , index){
          return const Padding(
         padding: EdgeInsets.only(bottom: 20.0),
      child: BestSellerItem(),
          );
        }
    );
  }
}
