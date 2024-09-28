import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:one_football_copy/constant/customTheme.dart';
import 'package:one_football_copy/constant/svg_icons.dart';
import 'package:one_football_copy/models/Team.dart';
import 'package:one_football_copy/widgets/components/TeamLogo.dart';

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({
    super.key,
    required this.teams,
  });

  final List<Team> teams;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "ONEFOOTBALL",
            style: TextStyle(
                color: CustomTheme.textColor,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed("/search");
                },
                child: const SvgIcon(
                  icon: SvgIcons.search,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              const SizedBox(width: 10),
              Stack(
                children: [
                  InkWell(
                    child: TeamLogo(
                      team: teams.first,
                      raduis: 50,
                      enableText: false,
                    ),
                  ),
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 15,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MatchesAppBar extends StatelessWidget {
  const MatchesAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Matches",
            style: TextStyle(
                color: CustomTheme.textColor,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          SvgIcon(
            icon: SvgIcons.settings,
            color: Colors.white,
            size: 30,
          )
        ],
      ),
    );
  }
}
