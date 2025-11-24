import 'package:bookly_app/features/home_page/presentation/manager/featuerd_books_cubit/featuredbooks_cubit.dart';
import 'package:bookly_app/features/home_page/presentation/view/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ListViewBooks extends StatelessWidget {
  const ListViewBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedbooksCubit, FeaturedbooksState>(
      builder: (context, state){
       if(state is FeaturedbooksSuccess){
         return SizedBox(
           height: MediaQuery
               .of(context)
               .size
               .height * .25,
           child: Padding(
             padding: const EdgeInsets.only(left: 30.0),
             child: ListView.builder(
                itemCount: state.books.length,
                 scrollDirection: Axis.horizontal,
                 itemBuilder: (context, index) {
                   return CustomBookItem(imageUrl: state.books[index].image);
                 }
             ),
           ),
         );
       } else if(state is FeaturedbooksFailure){
         return Text(state.errMessage);
       }
       else {
         return const Center(child: CircularProgressIndicator());
       }

      },
    );
  }
}
