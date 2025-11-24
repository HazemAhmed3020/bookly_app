import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class CustomBestSellerBookDetails extends StatelessWidget {
  const CustomBestSellerBookDetails({super.key, required this.imageUrl, required this.bookName, required this.authorName, required this.ratings, required this.ratingsCounter});
    final String imageUrl;
    final String bookName;
    final String authorName;
    final num ratings;
    final num ratingsCounter;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: CachedNetworkImage(
            width: 120, height: 180,
            imageUrl:  imageUrl,
            fit: BoxFit.fill,
            placeholder: (context , url) => const Center(child: CircularProgressIndicator()),
            errorWidget: (context , url , error )=> const Icon(Icons.warning),
          ),
        ),
        SizedBox(width: 30, height: MediaQuery.of(context).size.height * .2,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text( bookName , style: Styles.meduimdetails ,maxLines: 2, softWrap: true ,),
              const SizedBox(height: 10,),
               Text(authorName, style: const TextStyle(color: Colors.blueGrey , fontWeight: FontWeight.w500 , fontSize: 15), textAlign: TextAlign.left,),
              const SizedBox(height: 10,),
               Row(
                children: [
                  const Text('Free', style: TextStyle(color: Colors.white , fontSize: 17 , fontWeight: FontWeight.w500),),
                  const Spacer(flex: 1,),
                  Text('⭐ $ratings ', textAlign: TextAlign.end,style: const TextStyle(color: Colors.white , fontSize: 15 , fontWeight: FontWeight.w500) ),
                  Text(' ($ratingsCounter)', textAlign: TextAlign.end,style: const TextStyle(color: Colors.white12 , fontSize: 15 , fontWeight: FontWeight.w500) ),
                ],
              )
            ],
          ),
        ),

      ],
    );
  }
}
