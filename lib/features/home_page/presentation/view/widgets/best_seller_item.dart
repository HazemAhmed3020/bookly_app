import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';


class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});
 static const String img = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3ofY1X5YuAEuhCOGdTUOA6cVHmN5cWPa_gw&s';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      width: MediaQuery.of(context).size.width - (30 - 45),
      height: MediaQuery.of(context).size.height * .18,
      child: Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(img),
            SizedBox(width: 30, height: MediaQuery.of(context).size.height * .2,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Harry Potter and the Goblet of Fire', style: Styles.meduimdetails ,maxLines: 2, softWrap: true ,),
                  const SizedBox(height: 10,),
                  const Text('J.K. Rowling', style: TextStyle(color: Colors.white38 , fontWeight: FontWeight.w500 , fontSize: 15), textAlign: TextAlign.left,),
                  const SizedBox(height: 10,),
                  const Row(
                    children: [
                      Text('19.99 €', style: TextStyle(color: Colors.white , fontSize: 17 , fontWeight: FontWeight.w500),),
                      Spacer(flex: 1,),
                      Text('⭐ 4.8 (2390)', textAlign: TextAlign.end,style: TextStyle(color: Colors.white , fontSize: 15 , fontWeight: FontWeight.w500) ),
                    ],
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
