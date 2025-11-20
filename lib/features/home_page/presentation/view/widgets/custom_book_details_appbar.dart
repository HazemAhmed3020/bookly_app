import 'package:flutter/material.dart';
class CustomBookDetailsAppbar extends StatelessWidget {
  const CustomBookDetailsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30 , right: 30 , top: 48 ,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: ()=> Navigator.pop(context), icon: const Icon(Icons.close ,size: 24,) ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart ,size: 24,) ),
        ],
      ),
    );
  }
}
