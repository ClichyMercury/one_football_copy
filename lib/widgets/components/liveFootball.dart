import 'package:flutter/material.dart';
import 'package:one_football_copy/constant/customTheme.dart';

// ignore: must_be_immutable
class LiveFootball extends StatelessWidget {
  LiveFootball(
      {super.key,
      required this.logoTeam1,
      required this.logoTeam2,
      required this.team1,
      required this.team2,
      required this.time,
      required this.isLive,
      this.dayMatch,
      this.provider});

  final Widget logoTeam1;
  final Widget logoTeam2;
  final String team1;
  final String team2;
  final String time;
  final bool isLive;
  String? dayMatch;
  final String? provider;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 325,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade800,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image avec overlay Play Button et durée
          Stack(
            children: [
              Container(
                height: 150,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: CustomTheme.greenYellowMainColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                bottom: 0,
                right: 0,
                child: Center(
                  child: Icon(
                    Icons.play_circle_filled,
                    color: Colors.white.withOpacity(0.8),
                    size: 50,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(height: 22, width: 22, child: logoTeam1),
                        const SizedBox(width: 10),
                        Text(
                          team1,
                          style: const TextStyle(
                            color: CustomTheme.textColor,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(height: 22, width: 22, child: logoTeam2),
                        const SizedBox(width: 10),
                        Text(
                          team2,
                          style: const TextStyle(
                            color: CustomTheme.textColor,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      width: 1,
                      height: dayMatch != null ? 80 : 70,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (dayMatch != null)
                      Text(
                        dayMatch!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    Text(
                      isLive ? "LIVE" : time,
                      style: TextStyle(
                        color: isLive ? Colors.pink : Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const FreeButton(),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey.withOpacity(0.3),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundColor: CustomTheme.greenYellowMainColor,
                  radius: 12,
                ),
                const SizedBox(width: 10),
                Text(
                  provider ?? "Unknown provider",
                  style: TextStyle(
                    color: CustomTheme.textColor.withOpacity(0.7),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

class FreeButton extends StatelessWidget {
  const FreeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: 40,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(40)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.play_arrow,
            color: Colors.pink,
          ),
          SizedBox(width: 5),
          Text(
            "FREE",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
