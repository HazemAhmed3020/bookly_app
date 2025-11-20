import 'package:bookly_app/features/home_page/presentation/view/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'custom_book_details_appbar.dart';


class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
  var width =  MediaQuery.of(context).size.width;
    return Column(
          children: [
              const CustomBookDetailsAppbar(),
              const SizedBox(height: 5,),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * .24,
                ),
                  child: const CustomBookItem()
              ),
            const SizedBox(height: 40,),
            const Text('The Jungle Book', style: TextStyle(fontSize: 30 , color: Colors.white , fontFamily: 'GT Sectra Fine Regular'),),
            const SizedBox(height: 10,),
            const Text('J.K. Rowling', style: TextStyle(color: Colors.blueGrey , fontWeight: FontWeight.w500 , fontSize: 20), textAlign: TextAlign.left,),
            const SizedBox(height: 20,),
            SizedBox(
              height: 18,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('⭐ 4.8 ', textAlign: TextAlign.end,style: TextStyle(color: Colors.white , fontSize: 15 , fontWeight: FontWeight.w500) ),
                  const Text(' (2390)', textAlign: TextAlign.end,style: TextStyle(color: Colors.white12 , fontSize: 15 , fontWeight: FontWeight.w500) ),
                ],
              ),
            )
          ],
        );
  }
}
