import 'package:flutter/material.dart';
import 'package:one_football_copy/constant/customTheme.dart';

class MatchViewRow extends StatelessWidget {
  const MatchViewRow({
    super.key,
    required this.team1,
    required this.team2,
    required this.logoTeam1,
    required this.logoTeam2,
    required this.time,
    required this.live,
    required this.scoreTeam1,
    required this.scoreTeam2,
  });

  final String team1;
  final String team2;
  final Widget logoTeam1;
  final Widget logoTeam2;
  final String scoreTeam1;
  final String scoreTeam2;
  final String time;
  final bool live;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  logoTeam1,
                  const SizedBox(width: 10),
                  Text(
                    team1,
                    style: const TextStyle(
                      color: CustomTheme.textColor,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    scoreTeam1,
                    style: const TextStyle(
                      color: CustomTheme.textColor,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  logoTeam2,
                  const SizedBox(width: 10),
                  Text(
                    team2,
                    style: const TextStyle(
                      color: CustomTheme.textColor,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    scoreTeam2,
                    style: const TextStyle(
                      color: CustomTheme.textColor,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            width: 1,
            height: 60,
            color: Colors.grey.withOpacity(0.3),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    time,
                    style: TextStyle(
                      color: live ? Colors.pink : CustomTheme.textColor,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  width: 1,
                  height: 60,
                  color: Colors.grey.withOpacity(0.3),
                ),
              ),
              Icon(
                Icons.star_border,
                color: CustomTheme.textColor.withOpacity(0.5),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
