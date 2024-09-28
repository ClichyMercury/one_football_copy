import 'package:flutter/material.dart';
import 'package:one_football_copy/constant/customTheme.dart';

class TrendingPlayersWidget extends StatelessWidget {
  const TrendingPlayersWidget(
      {super.key, required this.team, required this.player});
  final String team;
  final String player;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(right: 10),
      height: 125,
      width: 175,
      decoration: BoxDecoration(
          color: Colors.grey.shade800, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundColor: CustomTheme.greenYellowMainColor,
          ),
          const SizedBox(height: 5),
          Text(
            team,
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
          Text(
            player,
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
