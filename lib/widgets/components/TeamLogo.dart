import 'package:flutter/material.dart';
import 'package:one_football_copy/constant/customTheme.dart';
import 'package:one_football_copy/models/Team.dart';

class TeamLogo extends StatelessWidget {
  const TeamLogo(
      {super.key,
      required this.team,
      required this.raduis,
      required this.enableText});
  final Team team;
  final double raduis;
  final bool enableText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: raduis,
          width: raduis,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(raduis),
              color: CustomTheme.greyAccent),
          child: Center(
            child: team.logoUrl,
          ),
        ),
        const SizedBox(height: 8),
        if (enableText)
          Text(
            team.name,
            style: TextStyle(color: Colors.white),
          ),
      ],
    );
  }
}
