import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum SvgIcons {
  calendar,
  comment,
  football,
  home,
  parameters,
  profile,
  search,
  settings,
  tv
}

Map<SvgIcons, String> svgLink = {
  SvgIcons.calendar: 'assets/svg/calendar.svg',
  SvgIcons.comment: 'assets/svg/comment.svg',
  SvgIcons.football: 'assets/svg/football.svg',
  SvgIcons.home: 'assets/svg/home.svg',
  SvgIcons.parameters: 'assets/svg/parameters.svg',
  SvgIcons.profile: 'assets/svg/profile.svg',
  SvgIcons.search: 'assets/svg/search.svg',
  SvgIcons.settings: 'assets/svg/settings.svg',
  SvgIcons.tv: 'assets/svg/tv.svg',
};

class SvgIcon extends StatelessWidget {
  final Color? color;
  final double size;
  final SvgIcons? icon;
  const SvgIcon({
    super.key,
    this.color = Colors.black,
    this.size = 20,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return icon != null
        ? SizedBox(
            child: SvgPicture.asset(svgLink[icon]!, width: size, color: color),
          )
        : Container();
  }
}
