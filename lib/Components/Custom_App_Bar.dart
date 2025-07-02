// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:store_app/core/color.dart';

class CustomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomeAppBar({super.key, required this.isBlackk});
  final bool isBlackk;

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    bool isBlack = isBlackk;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AppBar(
        backgroundColor: isBlack ? Appcolor.primary : Colors.white,

        centerTitle: true,
        leadingWidth: 25,

        leading: SvgPicture.asset(
          "assets/svgs/Menu.svg",
          color: isBlack ? Colors.white : Appcolor.primary,
        ),

        title: SvgPicture.asset(
          "assets/logo/logo-bg.svg",

          color: isBlack ? Colors.white : Appcolor.primary,
        ),

        actions: [
          SvgPicture.asset(
            "assets/svgs/Search.svg",
            color: isBlack ? Colors.white : Appcolor.primary,
          ),
          Gap(20),
          SvgPicture.asset(
            "assets/svgs/shopping bag.svg",
            color: isBlack ? Colors.white : Appcolor.primary,
          ),
        ],
      ),
    );
  }
}
