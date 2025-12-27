

import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
            CustomTextField(),
      ],
    );
  }
}

 class CustomTextField extends StatelessWidget {
   const CustomTextField({super.key});

   @override
   Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.symmetric(horizontal: 16),
       child: TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.white60,
                width: 2,
              ),
            ),
          ),
       ),
     );
   }
 }
