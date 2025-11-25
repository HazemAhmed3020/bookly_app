import 'package:bookly_app/features/home_page/data/models/books_model.dart';
import 'package:bookly_app/features/home_page/presentation/view/widgets/book_details_section.dart';
import 'package:bookly_app/features/home_page/presentation/view/widgets/custom_book_item.dart';
import 'package:bookly_app/features/home_page/presentation/view/widgets/similar_books_listview.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/widgets/custom_button_action.dart';
import 'custom_book_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.booksModel});
  final BooksModel booksModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers:[
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CustomBookDetailsAppbar(),
            const SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .24),
              child: const CustomBookItem(imageUrl: 'https://m.media-amazon.com/images/I/71fbdVaXfpL._AC_UF894,1000_QL80_.jpg',),
            ),
            const SizedBox(height: 40),
            const BookDetailsSection(),
            const SizedBox(height: 16,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0),
              child: Row(
                children: [
                  Expanded(child: ButtonAction(txtColor: Colors.black, backGroundColor: Colors.white, txt: '19.99€', borderRadius: BorderRadius.only(topLeft: Radius.circular(12), bottomLeft:  Radius.circular(12)),)),
                  Expanded(child: ButtonAction(txtColor: Colors.white, backGroundColor: Color(0xFFEF8262), txt: 'Free Preview', borderRadius: BorderRadius.only(topRight: Radius.circular(12), bottomRight:  Radius.circular(12)),)),
                ],
              ),
            ),
            const SizedBox(height: 30,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text('You can also like', style: TextStyle(color: Colors.white , fontSize: 18),textAlign: TextAlign.start,),
            ),
            const SizedBox(height: 20,),
            const SimilarBookListView(),
          ],
                ),
        ),
      ],
    );
  }
}


