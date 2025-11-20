import 'package:bookly_app/features/home_page/presentation/view/widgets/custom_book_item.dart';
import 'package:bookly_app/features/home_page/presentation/view/widgets/similar_books_listview.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/widgets/custom_button_action.dart';
import 'custom_book_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const CustomBookDetailsAppbar(),
        const SizedBox(height: 5),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .24),
          child: const CustomBookItem(),
        ),
        const SizedBox(height: 40),
        const Text(
          'The Jungle Book',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontFamily: 'GT Sectra Fine Regular',
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'J.K. Rowling',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.blueGrey,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 20),
        const SizedBox(
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
    );
  }
}


