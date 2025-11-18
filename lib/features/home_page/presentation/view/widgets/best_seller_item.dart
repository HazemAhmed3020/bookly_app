import 'package:bookly_app/features/home_page/presentation/view/widgets/custom_best_seller_book_details.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      width: MediaQuery.of(context).size.width - (30 - 45),
      height: MediaQuery.of(context).size.height * .18,
      child: const CustomBestSellerBookDetails(),
    );
  }
}
