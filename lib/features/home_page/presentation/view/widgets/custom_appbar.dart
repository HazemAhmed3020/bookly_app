import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets_data.dart';


class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30 , right: 30 , top: 48 , bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(AssetsData.logo, width: 75, height: 18,),
          IconButton(onPressed: ()=> GoRouter.of(context).push('/SearchView'), icon: const FaIcon(FontAwesomeIcons.magnifyingGlass ,size: 22,) ),
        ],
      ),
    );
  }
}
