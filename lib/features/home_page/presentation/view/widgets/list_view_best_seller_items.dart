import 'package:bookly_app/features/home_page/presentation/manager/newest_books_cubit/newestbooks_cubit.dart';
import 'package:bookly_app/features/home_page/presentation/view/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewBestSellerItems extends StatelessWidget {
  const ListViewBestSellerItems({super.key,});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestbooksCubit, NewestbooksState>(
      builder: (context, state) {
        if(state is NewestbooksSuccess){
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              itemCount: 20,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: BestSellerItem(booksModel: state.books[index],),
                );
              }
          );
        } else if(state is NewestbooksFailure){
          return Text(state.errMessage);
        }
        else {
          return const Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}
