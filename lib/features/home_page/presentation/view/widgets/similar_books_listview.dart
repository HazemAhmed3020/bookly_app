import 'package:bookly_app/features/home_page/presentation/manager/similar_books/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_item.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
  builder: (context, state) {
      if(state is SimilarBooksSuccess){
        return SizedBox(
          height: MediaQuery.of(context).size.height * .19,
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context , index){
                  return const CustomBookItem(imageUrl: 'https://m.media-amazon.com/images/I/71fbdVaXfpL._AC_UF894,1000_QL80_.jpg',);
                }
            ),
          ),
        );
      }
      else if(state is SimilarBooksFailure){
        return Text(state.errMessage);
      }
      else {
        return const Center(child: CircularProgressIndicator(),);
      }
  },
);
  }
}



