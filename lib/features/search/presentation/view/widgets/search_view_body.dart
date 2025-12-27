import 'package:bookly_app/features/home_page/presentation/manager/newest_books_cubit/newestbooks_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../home_page/presentation/view/widgets/best_seller_item.dart';
import 'custom_search_textfield.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key,});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const CustomTextField(),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            'Search result',
            textAlign: TextAlign.start,
            style: Styles.meduimdetails,
          ),
        ),
        const SizedBox(height: 20),
        BlocBuilder<NewestbooksCubit, NewestbooksState>(
          builder: (context, state) {
            if (state is NewestbooksSuccess){
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: BestSellerItem(booksModel: state.books[index]),
                        );
                      }
                  ),
                ),
              );
            }
            else {
              return const Center(child: CircularProgressIndicator(),);
            }
          },
        )
      ],
    );
  }
}

