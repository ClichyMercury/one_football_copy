import 'package:flutter/material.dart';
import 'package:one_football_copy/constant/customTheme.dart';
import 'package:one_football_copy/constant/svg_icons.dart';

import 'navigation_bar_item.dart';

class CustomNavigationBar extends StatefulWidget {
  final Function(int) changeIndex;
  final int currentIndex;
  const CustomNavigationBar({
    Key? key,
    required this.changeIndex,
    required this.currentIndex,
  }) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: CustomTheme.greyAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 25),
          NavigationBarItem(
            icon: SvgIcons.home,
            text: 'Home',
            changeIndex: widget.changeIndex,
            index: 0,
            currentIndex: widget.currentIndex,
          ),
          NavigationBarItem(
            icon: SvgIcons.football,
            text: 'Matches',
            changeIndex: widget.changeIndex,
            index: 1,
            currentIndex: widget.currentIndex,
          ),
          NavigationBarItem(
            icon: SvgIcons.tv,
            text: 'TV',
            changeIndex: widget.changeIndex,
            index: 2,
            currentIndex: widget.currentIndex,
          ),
          NavigationBarItem(
            icon: SvgIcons.profile,
            text: 'Profile',
            changeIndex: widget.changeIndex,
            index: 3,
            currentIndex: widget.currentIndex,
          ),
          const SizedBox(width: 25),
        ],
      ),
    );
  }
}
