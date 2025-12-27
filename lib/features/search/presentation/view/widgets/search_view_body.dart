import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

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
            borderSide: const BorderSide(color: Colors.white60, width: 2),
          ),
        ),
      ),
    );
  }
}
