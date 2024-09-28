import 'package:flutter/material.dart';
import 'package:one_football_copy/constant/customTheme.dart';
import 'package:one_football_copy/models/Team.dart';
import 'package:one_football_copy/widgets/components/TeamLogo.dart';

// ignore: must_be_immutable
class ProfileCategoryTitleWidget extends StatelessWidget {
  ProfileCategoryTitleWidget({
    super.key,
    required this.title,
    this.touch,
  });

  final String title;
  VoidCallback? touch;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: touch,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: CustomTheme.textColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            if (touch != null)
              const Row(
                children: [
                  Text(
                    "See all",
                    style: TextStyle(
                        color: CustomTheme.textColor,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(width: 2),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: CustomTheme.textColor,
                    size: 13,
                  )
                ],
              )
          ],
        ),
      ),
    );
  }
}

class ProfileTeamFollowingList extends StatelessWidget {
  const ProfileTeamFollowingList(
      {super.key, required this.teams, required this.index});

  final List<Team> teams;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Stack(
        children: [
          Container(
            width: 115,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 1, color: Colors.white)),
            child: TeamLogo(
              enableText: false,
              team: teams[index],
              raduis: 95,
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100)),
                child: const Icon(Icons.favorite, color: Colors.red)),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class ProfileOptionCard extends StatelessWidget {
  ProfileOptionCard({super.key, required this.title, this.subtitle});

  final String title;
  String? subtitle;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: CustomTheme.greenYellowMainColor,
                borderRadius: BorderRadius.circular(10)),
            child: const Center(
              child: Icon(Icons.image),
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.blueGrey.shade300,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                if (subtitle != null)
                  Text(
                    subtitle!,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
              ],
            ),
          ),
          Container(
            height: height / 15,
            width: width / 3.5,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: const Center(
              child: Text(
                "PLAY",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProfileOptionLine extends StatelessWidget {
  const ProfileOptionLine({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 30,
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            )
          ],
        ),
        const Icon(
          Icons.arrow_forward_ios,
          size: 20,
          color: Colors.white,
        )
      ],
    );
  }
}
