import 'package:flutter/material.dart';
import 'package:one_football_copy/constant/customTheme.dart';
import 'package:one_football_copy/constant/svg_icons.dart';

class HeadCardProfile extends StatelessWidget {
  const HeadCardProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 260,
          width: double
              .infinity, // Assurez-vous que le Container prenne toute la largeur
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, const Color.fromARGB(255, 64, 26, 71)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(width: 5.0, color: Colors.grey)),
                child: const CircleAvatar(
                  radius: 50,
                  child: Icon(
                    Icons.person_outlined,
                    color: Colors.white,
                    size: 75,
                  ),
                  backgroundColor: CustomTheme.greyAccent,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {
                  // Action pour le bouton Sign in
                },
                child: Text(
                  'Sign in',
                  style: TextStyle(
                      color: Colors.purple.shade200,
                      decoration: TextDecoration.underline,
                      fontSize: 20),
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          top: 10,
          right: 10,
          child: SvgIcon(
            icon: SvgIcons.parameters,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    );
  }
}
