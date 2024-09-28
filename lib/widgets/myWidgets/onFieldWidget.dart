import 'package:flutter/material.dart';
import 'package:one_football_copy/constant/customTheme.dart';

class GSMandMore extends StatelessWidget {
  const GSMandMore(
      {super.key,
      required this.title,
      required this.time,
      required this.team,
      required this.duration});

  final String title;
  final String time;
  final String team;
  final String duration;

  @override
  Widget build(BuildContext context) {
    return Container(
      width:
          300, // Définit une largeur fixe pour éviter les problèmes avec Expanded
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          color: Colors.grey.shade800, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Alignement à gauche
        children: [
          // Image avec overlay Play Button et durée
          Stack(
            children: [
              Container(
                height: 150,
                width: 300,
                decoration: const BoxDecoration(
                    color: CustomTheme.greenYellowMainColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: const Center(
                  child: Icon(Icons.play_arrow_rounded),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                  ),
                  child: Text(
                    duration,
                    style: const TextStyle(color: Colors.white, fontSize: 12),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: CustomTheme.textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 12,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      team,
                      style: const TextStyle(
                        color: CustomTheme.textColor,
                        fontSize: 12,
                      ),
                    ),
                    const Spacer(), // Permet à l'espace restant d'être pris par l'espacement
                    const Icon(Icons.timer, color: Colors.white54, size: 14),
                    const SizedBox(width: 4),
                    Text(
                      time,
                      style: const TextStyle(
                        color: Colors.white54,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
