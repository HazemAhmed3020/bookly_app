import 'package:bookly_app/features/home_page/presentation/view/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

import 'custom_appbar.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 48),
      child: Column(children: [
        CustomAppbar(),
        CustomBookItem(),

      ]
      ),
    );
  }
}
