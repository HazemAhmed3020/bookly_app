import 'package:bookly_app/features/home_page/presentation/view/widgets/custom_book_item.dart';
import 'package:bookly_app/features/home_page/presentation/view/widgets/list_view_books.dart';
import 'package:flutter/material.dart';

import 'custom_appbar.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppbar(),
        SizedBox(height: 20),
        ListViewBooks()
      ],
    );
  }
}
