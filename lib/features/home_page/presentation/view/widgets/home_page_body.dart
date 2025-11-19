import 'package:bookly_app/features/home_page/presentation/view/widgets/List_view_best_seller_items.dart';
import 'package:bookly_app/features/home_page/presentation/view/widgets/list_view_books.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_appbar.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppbar(),
        const SizedBox(height: 20),
        const ListViewBooks(),
        const SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Text('Best Seller',textAlign: TextAlign.left,style: Styles.meduimHeading,),
        ),
         Padding(
          padding: const EdgeInsets.only(left: 30.0 , right: 20),
          child: SizedBox(
              height: MediaQuery.of(context).size.height * .5, width: double.infinity,
              child: const ListViewBestSellerItems()
          ),
        ),
      ],
    );
  }
}
